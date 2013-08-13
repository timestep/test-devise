class AuthenticationsController < ApplicationController

  skip_before_filter :verify_authenticity_token :only => [:create]

  def index
    @authentications = Authentication.all
  end

  def create
    # binding.pry
    auth = auth_hash
    current_user.authentications.find_or_create_by_provider_and_uid(auth['provider'], auth['uid'])
    binding.pry
    flash[:notice] = "Authentication successful."

    redirect_to root_path
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
