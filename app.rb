class Tunr < Sinatra::Base

  # General route actions
  get '/' do
    erb :home
  end

  get '/about' do
    erb :about
  end

  # RESTful Artist Controller Actions
  #show all artists
  # index
  get '/artists' do
    @artists = Artist.all
    erb(:"artists/index")
  end

  #return a form to create a new artist
  # new
  get '/artists/new' do
    @artist = Artist.new
    erb(:"artists/new")
  end

  #recieve params to create a new artist
  # create
  post '/artists' do
    @artist = Artist.new(params[:artist])
    if @artist.save
      redirect("/artists/#{@artist.id}")
    else
      erb(:"artists/new")
    end
  end

  #given an id show a specific artist
  # show
  get '/artists/:id' do
    @artist = Artist.find(params[:id])
    erb(:"artists/show")
  end

  #give a form to edit a specific artist
  # edit
  get '/artists/:id/edit' do
    @artist = Artist.find(params[:id])
    erb(:"artists/edit")
  end

  #given data update the specific artist
  # update
  put '/artists/:id' do
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(params[:artist])
      redirect("/artists/#{artist.id}")
    else
      erb(:"artists/edit")
    end
  end

  #given the id delete that artist
  # delete
  delete '/artists/:id/delete' do
    @artist = Artist.find(params[:id])
    if @artist.destroy
      redirect('/artists')
    else
      redirect("/artists/#{@artist.id}")
    end
  end

end
