if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAI5JECNMM5HGR5G7Q'],
      :aws_secret_access_key => ENV['yP/yVx7bOsR/PPWzw3qgepR1ZN3S4PaLFVF4MhYa']
    }
    config.fog_directory     =  ENV['sample-app-520']
  end
end
