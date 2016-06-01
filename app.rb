require 'json'
require 'rubygems'
require 'sinatra/base'

class DummyApp < Sinatra::Base
  get '/' do
  	# TODO: Serve assets maybe?
  	body "This route and any non-api route should be handled by a reverse proxy (e.g. nginx)"
  end

  get '/api/' do
  	body "Specify an API version for all subsequent calls. e.g. GET /api/v1/..."
  end

  get '/api/v1/' do
  	# TODO: Valid routes
  	body ['todo', 'designate', 'valid', 'routes', 'here'].to_json
  end

  get '/api/v1/status' do
  	status = {
  		:pid => Process.pid,
  		:ruby_version => RUBY_VERSION,
  		:ruby_engine => RUBY_ENGINE,
  		:ruby_location => RbConfig.ruby,
  		:rack_version => Rack.version,
  		:request_path => request.path
  	}
  	content_type :json
  	body status.to_json
  end
end