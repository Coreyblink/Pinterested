# Load the Rails application.
# Initialize the Rails application.

Rails.application.initialize!

require File.expand_path('../application', __FILE__)
config.paperclip_defaults = {  # COREY --- this line is wrong, says so in the error down below: "/tmp/build_7a25dc9347273eb56888937c2494b5ed/config/environment.rb:7:in"  --  my thought is you copy pasted this from somewhere.  basically config isn't define, normally it's a block argument from somewhere.  look at where you got this code a litle more carefully and copy that pattern exactly.  i have to run now, but i'll be back online in a few hours so just let me know.
:storag=> :s3,
:s3_credentials =>{
:bucket => ENV['S3_BUCKET_NAME'],
:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
}
 }