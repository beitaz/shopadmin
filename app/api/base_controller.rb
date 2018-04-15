class BaseController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :authenticate_user!, only: [:debug, :auth, :grab]
  before_action :write_params

  def auth
    render json: { msg: 'Ok!' }
  end

  def debug
    render json: { hello: 'world' }
  end

  def grab
    puts params.class
  end

  private

    def write_params
      file_path = Rails.root.join('data', action_name + '.json')
      File.atomic_write(file_path) do |file|
        file.write(params.to_json)
      end
    end
end
