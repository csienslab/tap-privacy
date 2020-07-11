#!/bin/bash

COOKIE=''
TOKEN=''

curl 'https://platform.ifttt.com/graph/query' -H 'cookie: '$COOKIE -H 'content-type: application/json' -H 'accept: */*' -H 'authority: platform.ifttt.com' --data-binary '{"query":"\n  query {\n    channels {\n      \n  id\n  module_name\n  name\n  description\n  lrg_variant_image_url\n  lrg_monochrome_image_url\n  brand_color\n  trigger_count\n  action_count\n  normalized_module_name\n  alternate_search_terms\n  protocol_version\n  incompatible_channels\n  public_actions {\n    name\n    incompatible_triggers\n  }\n  public_queries { name }\n  public_triggers { name }\n\n    }\n  }\n","variables":{},"authenticity_token":"'$TOKEN'"}' --compressed
