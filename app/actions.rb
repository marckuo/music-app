# Homepage (Root path)
get '/' do
  erb :index
end

get'/tracks' do
  @tracks = Track.all
  erb :'tracks/index'
end

get '/tracks/new' do
  erb :'tracks/new'
end

get '/tracks/:artist' do
  @tracks = Track.where artist: params[:artist]
  erb :'tracks/artist'
end

get '/tracks/:author' do
  @tracks = Track.where author: params[:author]
  erb :'tracks/author'
end

get '/signup' do
  erb :'signup'
end

post 'signup' do
  
end

post '/tracks' do
  @track = Track.new(
    song: params[:song],
    artist: params[:artist],
    author: params[:author]
    )

  if @track.save
    redirect '/tracks'
  else
    erb :'tracks/new'
  end
end
