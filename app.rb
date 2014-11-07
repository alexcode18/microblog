require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require 'better_errors'

#classes
require_relative 'models/author.rb'
require_relative 'models/micro_post.rb'
require_relative 'models/tag.rb'

#controllers
require_relative 'controllers/authors_controller'
require_relative 'controllers/home_controller'
require_relative 'controllers/micro_posts_controller'
require_relative 'controllers/tags_controller'

configure :development  do
	use BetterErrors::Middleware
	BetterErrors.applications_root = File.expand_path('..', __FILE__)
end

ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	database: 'museum_app_db',
	host: 'localhost'
})

after { ActiveRecord::Base.connection.close }