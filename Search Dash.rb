# Searches the Dash app for Code Documentation
require "erb"
require "uri"

include ERB::Util

clipboard=`pbpaste`
url=url_encode(clipboard)

`open dash://#{url}`