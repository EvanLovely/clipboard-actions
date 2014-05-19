# Create new Gmail email with copied text as body. 
require "erb"
require "uri"

include ERB::Util

clipboard=`pbpaste`
url=url_encode(clipboard)

`open 'https://mail.google.com/mail/u/0/?search=query&view=tl&start=0&init=1&fs=1&q=#{url}'`
