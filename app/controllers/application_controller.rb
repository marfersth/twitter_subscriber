class ApplicationController < ActionController::API
  def log_twitter_account_activity_get
    logger.info '####### GET #######'
    logger.info params
    head :ok
  end

  def log_twitter_account_activity_post
    logger.info '####### POST #######'
    logger.info params
    head :ok
  end
end
