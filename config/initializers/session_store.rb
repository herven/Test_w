# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test_webpulser_session',
  :secret      => '04034629ec64538bdf2f7bf02e4d2d27d12061a0bc94c1e8d4ca25e6303440189ecb39535ce74e5da9408d39d17a0bb5f0d898f7e09f7f6e94836c96e3ac0748'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
