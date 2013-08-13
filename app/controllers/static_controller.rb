class StaticController < ApplicationController
  def home
  	# binding.pry
  	current_user
  end
end
