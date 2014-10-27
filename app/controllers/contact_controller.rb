class ContactController < ApplicationController
	def send_email
		ActionMailer::Base.mail(:from => 'from@domain.com', :to => 'bjohnson0311@gmail.com', :subject => "TEST", 
			:body => 'This is a test.').deliver
		flash[:notice] = "Message sent"
		redirect_to root_path
	end

	def index
	end
end