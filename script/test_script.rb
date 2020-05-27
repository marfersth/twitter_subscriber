require_relative '../lib/setup_webhooks'
tm =TaskManager.new
tm.get_webhook_configs
# tm.set_webhook_config('https://flimper-twitter-test.herokuapp.com/log_twitter_account_activity')
# tm.webhook_ids.each do |webhook_id|
#   tm.confirm_crc(webhook_id)
#   tm.delete_webhook_config(webhook_id)
# end
# tm.set_webhook_subscription('develop1')
# tm.get_webhook_subscription('develop1')


# curl --request POST
# --url 'https://api.twitter.com/1.1/account_activity/all/:ENV_NAME/webhooks.json?url=https%3A%2F%2Fflimper-twitter-test.herokuapp.com%2Flog_twitter_account_activity'
# --header 'authorization: OAuth
# oauth_consumer_key="SAGiKs7uC4TVe3S",
# oauth_nonce="GENERATED",
# oauth_signature="GENERATED",
# oauth_signature_method="HMAC-SHA1",
# oauth_timestamp="GENERATED",
# oauth_token="ACCESS_TOKEN",
# oauth_version="1.0"'


# Created webhook instance with webhook_id: 111927331256065 | pointing to https://flimper-twitter-test.herokuapp.com/log_twitter_account_activity
