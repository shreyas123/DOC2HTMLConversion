# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_converter_session',
  :secret      => 'cf6f1c528495882655e90402f03db31e94d4f78e39b466e5a389a32d1af10d2c3bfdffb07330f49b612b1e6e11481e82ac867d396067b26aaa52c5c8f8ed159f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
