class ApplicationController < ActionController::API
  def log_twitter_account_activity_get
    logger.info '####### GET #######'
    logger.info params

    crc_token = params['crc_token']
    if not crc_token.nil?
      response = {}
      consumer_secret = 'EduPumcCfrXVjC3pBpiPUXHQiuCJiRNtuvBuM2MF5MoDb2phKC'
      response['response_token'] = "sha256=#{generate_crc_response(consumer_secret, crc_token)}"
      body response.to_json
    end

    status 200
  end

  def log_twitter_account_activity_post
    logger.info '####### POST #######'
    logger.info params
    head :ok, format: :json
  end

  def generate_crc_response(consumer_secret, crc_token)
    hash = OpenSSL::HMAC.digest('sha256', consumer_secret, crc_token)
    return Base64.encode64(hash).strip!
  end
end
