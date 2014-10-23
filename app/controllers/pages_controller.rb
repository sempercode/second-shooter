class PagesController < ApplicationController
	def contact
		ActionMailer::Base.mail(:from => 'from@domain.com', :to => 'bjohnson0311@gmail.com', :subject => "TEST", :body => 'This is a test.').deliver
	end
end
