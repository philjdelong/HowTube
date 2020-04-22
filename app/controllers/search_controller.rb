class SearchController < ApplicationController
	def index
		@top_searches = Search.order('hits DESC').limit(3)
	end
	
	def show
	end
	
	def update
		search = Search.where(title: params[:search])[0]
		if search
			search.hits += 1
			search.save
		else
			Search.create({
				title: search_params.values[0]
			})
		end
		redirect_to "/HowTube"
	end

	private

	def search_params
		params.permit(:search)
	end
end