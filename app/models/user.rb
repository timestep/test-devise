class User < ActiveRecord::Base
	has_many :authentications
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # devise :omniauthable, :omniauth_providers => [:steam]

end
