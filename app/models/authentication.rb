class Authentication < ActiveRecord::Base

	serialize :data, Hash

	belongs_to :user

end
