class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @comments = @movie.comments
    @movie = Movie.find_by(id: params[:id])
    @comment = Comment.new
    render "show"
  end

  # GET /movies/new
  def new
    @movie = Movie.new

  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully removed.' }
      format.json { head :no_content }
    end
  end

  def search
    @movies = Movie.where(title: params[:searched_movie])
    unless @movies.empty?
      redirect_to show_results_path(params[:searched_movie])
    else
      redirect_to show_imdb_results_path(params[:searched_movie])
    end
  end

  def show_results
    @movies = Movie.where(title: params[:searched_movie])
  end

  def imdb_search
    @movies = Movie.search(params[:searched_movie])[0..9]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :poster, :year, :synopsis)
    end
end
