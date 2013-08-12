class AuthenticationsController < ApplicationController
  def index
    @authentications = Authentication.all
  end

  def create
    render :text => auth_hash
  end

  def destroy
    @authentication = Authentication.find(params[:id])
    @authentication.destroy
    redirect_to authentications_url, :notice => "Successfully destroyed authentication."
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
