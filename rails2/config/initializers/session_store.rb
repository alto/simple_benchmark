# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_perf_test_rails2_session',
  :secret      => '51f2c9f9e1fa64669259e704dd6b77fe004ab2af24a89cbc1d88e428e2c7b7bc78c8a5d8bd7dcd616f27c4b927198466f6e69c1124478db18756c5bffa42b234'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
