require 'bundler'
Bundler.require
require_all 'app'

# Setup a DB connection here
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/daily.db')
