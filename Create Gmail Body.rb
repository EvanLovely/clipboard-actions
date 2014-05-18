# Create new Gmail email with copied text as body. 
require "erb"
require "uri"

include ERB::Util

clipboard=`pbpaste`
url=url_encode(clipboard)
gmail="https://mail.google.com/mail/?view=cm&fs=1&body=#{url}"

`open '#{gmail}'`
