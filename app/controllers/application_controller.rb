class ApplicationController < ActionController::API
  def log_twitter_account_activity
    logger.info params
    head :ok
  end
end
