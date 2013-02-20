# Load the rails application
require File.expand_path('../application', __FILE__)

# Set Facebook App Secret
ENV['FACEBOOK_APP_ID'] = "289557591171853";
ENV['FACEBOOK_SECRET'] = "24af34713f8dbb5f69511c9af297fce3";

# Initialize the rails application
Cinema::Application.initialize!
