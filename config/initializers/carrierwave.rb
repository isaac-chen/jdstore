CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog'
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV["AKIAIHMGGFVFAV4YI5NQ"],

      aws_secret_access_key: ENV["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"],

      region:                ENV["ap-northeast-1"]

    }
    config.fog_directory  = ENV["fullstack-isaac"] 


  else
    config.storage :file
  end
end
