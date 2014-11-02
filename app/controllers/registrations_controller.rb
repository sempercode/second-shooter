class RegistrationsController < Devise::RegistrationsController

	def create
		super do |user|
			if User.count == 1
				user.update_attribute(:is_admin, true)
			end
		end
	end
end
