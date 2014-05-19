# Create new Gmail email with copied text as body. 
require "erb"
require "uri"

include ERB::Util

clipboard=`pbpaste`
url=url_encode(clipboard)

`open 'https://api.drupal.org/api/drupal/7/search/#{url}'`
