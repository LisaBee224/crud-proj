get '/lists/new' do
  erb :'/lists/new'
end

post '/lists/new' do
  list = current_user.lists.create(params[:list])
  list.tags << Tag.find_or_create_by(tag_name: params[:tag][:tag_name])
  redirect '/lists/index'
end


get '/lists/index' do
  @lists = List.all
  @tags = Tag.all
  erb :'/lists/index'

end
