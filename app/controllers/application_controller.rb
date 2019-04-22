class ApplicationController < ActionController::API
  def log_twitter_account_activity_get
    logger.info '####### GET #######'
    logger.info params

    response = {}
    crc_token = params['crc_token']
    if not crc_token.nil?
      # flimper app
      # consumer_secret = 'EduPumcCfrXVjC3pBpiPUXHQiuCJiRNtuvBuM2MF5MoDb2phKC'
      # test app
      consumer_secret = 'zSEvxZaA30xkhVI15LLU0wTzi8mA5qtoOpxEHoaBhG9WmT9dQ9'
      response['response_token'] = "sha256=#{generate_crc_response(consumer_secret, crc_token)}"
    end

    render status: 200, json: response.to_json
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
