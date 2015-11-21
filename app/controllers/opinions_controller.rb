class OpinionsController < ApplicationController
	def show
		@opinion = Opinion.find(params[:id])
	end

	def new
	end

	def create
		@opinion = Opinion.new(opinion_params)

		@opinion.save
		redirect_to @opinion
	end

	private
		def opinion_params
			params.require(:opinion).permit(:body)
		end
end
