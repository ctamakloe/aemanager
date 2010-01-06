# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_asset_manager_session',
  :secret      => 'ceec21e6a2444e3f36301e1ef824c741ba68724b5084d3e05c8b014f655cc8d15bfd53807b8699db5727841bd26225778e15b1f15a0c84f8cd1c9ff9bff04d25'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
