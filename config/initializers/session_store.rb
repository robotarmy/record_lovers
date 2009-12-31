# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_record_lovers_session',
  :secret      => '113197aa64b40f9b83cda36d3be1c384f7d9d84728af634c86b5c7eab4f1d32a07c575eae372ed715476f766a6ceaad1829e622865a6df18b1f9fa4f5bd94b76'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
