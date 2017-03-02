class ArticalsController < ApplicationController

	def index
		@articals = Artical.all
	end

	def new
		@artical = Artical.new
	end

	def create
		@artical = Artical.new(params_artical)
		@artical.save
		redirect_to root_path
	end

	def welcome
		@artical = Artical.find(params[:id])
	end
  
  def users
  	@articals = Artical.all
  end

	def params_artical
		params.require(:artical).permit(:user_name, :title, :body)
	end

end
