if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIOTMEAAQNWP4IJ5Q'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['rails-tutorial-pouncingfox']
  end
end