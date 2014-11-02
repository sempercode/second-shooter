class PagesController < ApplicationController
	def index
		@featured_photog = User.last
	end

end
