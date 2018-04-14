class BaseController < ApplicationController
  skip_before_action :authenticate_user!, only: [:debug]

  def auth
    render json: { msg: 'Ok!' }
  end

  def debug
    render json: { hello: 'world' }
  end
end
