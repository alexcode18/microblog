#=================
#     Posts
#=================

# Index
get '/posts' do
	@micro_posts = MicroPost.all
	erb :'/posts/index'
end

get '/posts/new' do
	@tags = Tag.all
	@authors = Author.all
	erb :'/posts/new'
end

get '/posts/:id' do
	@micro_post = MicroPost.find(params[:id])
	erb :'/posts/show'
end

post '/posts' do
	micro_post = MicroPost.new(params[:micro_post])
	tags = Tag.find(params[:tags])

	tags.each { |tag| micro_post.tags << tag }

	if micro_post.save
		redirect("/posts/#{micro_post.id}")
	else
		redirect("/posts/new")
	end
end