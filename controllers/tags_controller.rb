#=================
#      Tags
#=================

# Index
get '/tags' do
	@tags = Tag.all
	erb :'/tags/index'
end

get '/tags' do
	@tags = Tag.all
	erb :'/tags/index'
end

get '/tags/:id' do
	@micro_posts = MicroPost.all
	@tag = Tag.find(params[:id])
	erb :'/tags/show'
end

#Add a tag to the tags page

post '/tags' do
	tag = Tag.new(params[:tag])
	tag.save
	redirect '/tags'
end

