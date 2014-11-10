#=================
#     Authors
#=================

#Index
get '/authors' do
	@authors = Author.all
	erb :'/authors/index'
end

get '/authors/new' do
	erb :'/authors/new'
end

get '/authors/:id' do
	@author = Author.find(params[:id])
	erb :'/authors/show'
end

put '/authors/:id' do
	updated_author = Author.update(params[:id], params[:author])
	updated_author.save
	redirect("/authors/#{updated_author.id}")
end

post '/authors' do
	author = Author.new(params[:author])

	if author.save
		redirect("/authors/#{author.id}")
	else
		redirect("/authors/new")
	end
end

get '/authors/:id/edit' do
	@author = Author.find(params[:id])
	erb :'/authors/edit'
end

delete '/authors/:id' do
	author = Author.find(params[:id])
	if author.destroy
		redirect '/authors'
	else
		redirect "/authors/#{author.id}"
	end
end

