create pipe shared.public.item_catalog_pipe 
  auto_ingest=true as
  copy into test.public.item_catalog
  from @shared.public.tech_talk_stage
  file_format = shared.public.gzip_file_format;