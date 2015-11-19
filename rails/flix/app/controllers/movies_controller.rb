class MoviesController < ApplicationController

	def index
		@movies = Movie.past
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_url
	end

	def update
		@movie = Movie.find(params[:id])
		permitted_params = movie_params
		@movie.update(permitted_params)
		redirect_to movie_path(@movie.id)
	end

	def create
		permitted_params = movie_params
		@movie = Movie.new(permitted_params)
		@movie.save
		redirect_to movie_path(@movie.id)
		
	end

	def new
		@movie = Movie.new
	end

	private
		def movie_params
			params.require(:movie).permit(:title, :descrption, :website, :rating, :release, :pledging, :total_gross)
		end
end
