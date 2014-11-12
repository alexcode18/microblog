#=================
#       Home
#=================

get '/' do 
	@micro_posts = MicroPost.all
	erb :'posts/index'
end