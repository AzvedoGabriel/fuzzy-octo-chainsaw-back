class MoviesController < ApplicationController
  before_action :authenticate_user!

  # /movies/index | rota resources
  def index
    @movies = Movie.all
    respond_to do |format|
      format.html
      format.json { render json: @movies.to_json(methods: :average_score) }
    end
  end

  # GET /movies/new | rota resources
  def new
    @movie = Movie.new
  end

  # POST /movies/create | rota resources
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: "Movie was successfully created."
    else
      render :new
    end
  end

  def new_batch_upload; end

  def create_batch_upload
    movies_hash = Movie.hash_from_csv(params[:movies_file].tempfile)
    CreateBatchMoviesJob.perform_later(movies_hash, Movie, current_user.id)
    redirect_to movies_new_batch_upload_path, notice: 'Processing file please check the movie list'
  end

  #  get '/movies/new_batch_score_upload'
  def new_batch_score_upload; end

  # POST /movies/create_batch_score_upload
  def create_batch_score_upload
    score_hash = Movie.hash_from_csv(params[:score_file].tempfile)
    CreateBatchScoreJob.perform_late(score_hash, Movie, current_user.id)
    redirect_to movies_create_batch_score_upload_path, notice: 'Processing file score, please check the movie list'
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :director)
  end

end
