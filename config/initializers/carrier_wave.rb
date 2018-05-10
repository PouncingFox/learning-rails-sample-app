if Rails.env.production?
  CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :s3_access_key_id      => ENV['AKIAIOTMEAAQNWP4IJ5Q'],                        # required
    :s3_secret_access_key  => ENV['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'],                     # required
    :region                 => 'us-west-1',                  # optional, defaults to 'us-east-1'
  }
  #config.fog_directory  = ENV['rails-tutorial-pouncingfox']                             # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
end