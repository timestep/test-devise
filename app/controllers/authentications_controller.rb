class AuthenticationsController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [:create]

  def index
    @authentications = Authentication.all
    binding.pry
  end

  def show
    @authentication = Authentication.find(params[:id])
  end

  def create
    # binding.pry
    auth = auth_hash
    current_user.authentications.find_or_create_by_provider_and_uid(auth['provider'], auth['uid'])
    
    # binding.pry
    current_user.authentications.find_by_uid(auth['uid']).data = auth_hash
    current_user.authentications.find_by_uid(auth['uid']).save
    # binding.pry
    flash[:notice] = "Authentication successful."
    redirect_to authentications_path
    # binding.pry
  end

  def destroy
    @authentication = Authentication.find(params[:id])
    @authentication.destroy
    redirect_to authentications_url, :notice => "Successfully destroyed authentication."
  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end
end
