from flask.views import MethodView
from wtforms import Form, StringField, SubmitField
from flask import Flask, render_template,request
from locations import LocationAPI
import boto3
import csv
import io
import gzip
from datetime import datetime
import json


app = Flask(__name__)

# create S3 client
s3 = boto3.client('s3'
    # you can also store your AWS Keys as env variables.
    # aws_access_key_id='<AWS_ACCESS_KEY_ID>',
    # aws_secret_access_key='<AWS_SECRET_ACCESS_KEY>'
    )

# Name of the S3 Bucket which receives WebAPP data
bucket_name = 'web-app-tech-talk-stage-2'

class HomePage(MethodView):

    def get(self):
        current_ts = datetime.now().strftime("%Y_%m_%d_%H_%M_%S_")
        customer_ip_address = '200.170.220.6' #request.environ['REMOTE_ADDR']
        api_response = LocationAPI.get_info_from_ip(customer_ip_address)
        s3.put_object(Bucket=bucket_name, Key="data/customer_location_info/customer_location_info"+ current_ts +"form_response.json", Body=bytes(json.dumps(api_response).encode('UTF-8')))
        return render_template('index.html')


class RestaurantFormPage(MethodView):

    def get(self):
        form = RestaurantForm()
        return render_template('forms.html', form = form)

class ResultsPage(MethodView):
    def post(self):
        
        current_ts = datetime.now().strftime("%Y_%m_%d_%H_%M_%S_")
        data_ingestion_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S.00000") # time of forms fill up
        form = RestaurantForm(request.form)
        item_name = form.item_name.data
        category = form.category.data
        price = form.price.data
        mem_file = io.BytesIO()

        with gzip.GzipFile(fileobj=mem_file, mode='wb', compresslevel=6) as gz:
            buff = io.StringIO()
            writer = csv.writer(buff)
            writer.writerows([(item_name,category,price, data_ingestion_time)])
            gz.write(buff.getvalue().encode('utf-8', 'replace'))

        mem_file.seek(0)
        s3.put_object(Bucket=bucket_name, Key="data/web_app/web_app"+ current_ts +"form_response.gz", Body=mem_file)
        return  render_template('results.html')

class RestaurantForm(Form):
    item_name = StringField("Product Name\t")
    category = StringField("Category\t")
    price = StringField("Price (e.g: 10.00)\t")

    button = SubmitField("Send")

app.add_url_rule('/', view_func=HomePage.as_view('home_page'))
app.add_url_rule('/forms', view_func=RestaurantFormPage.as_view('forms'))
app.add_url_rule('/results', view_func=ResultsPage.as_view('results'))
app.run(port=5000)