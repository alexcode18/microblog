#=================
#     Posts
#=================

# Index
get '/posts' do
	@micro_posts = MicroPost.all
	erb :'/posts/index'
end

# get '/posts/new' do
# 	@micro_posts = MicroPost.all
# 	erb :'/posts/new'
# end

get '/posts/:id' do
	@micro_post = MicroPost.find(params[:id])
	erb :'/posts/show'
end

post '/posts/' do
	micro_post = MicroPost.new(params[:micro_post])
	if micro_post.save
		redirect("/posts/#{micro_post.id}")
	else
		redirect("/posts/new")
	end
end