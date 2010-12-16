# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_University_session',
  :secret      => '729ef37d7ce8f462f7f3463907cbe2d93609a9485cd1c4f09613a7e31092d089a16f6239930450b017b6dc57884a77d49b3130ec842695e9a468681548198674'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
