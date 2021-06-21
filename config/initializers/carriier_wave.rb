if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'], # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAZPL4PQ3R7BA5B2HZ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['rails-tutorial-2021-6-3']
  end
end