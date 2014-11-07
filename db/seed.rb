require 'active_record'
require_relative '../models/author'
require_relative '../models/micro_post'
require_relative '../models/tag'

ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	database: 'microblog_db',
	host: 'localhost'
})

MicroBlog.destroy_all
Author.destroy_all
Tag.destroy_all


