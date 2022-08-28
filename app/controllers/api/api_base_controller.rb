class Api::ApiBaseController < ApplicationController
  protect_from_forgery with: :null_session

  def render_json(object, args = nil)
    if args.nil?
      render json: object
    else
      render json: object, **args
    end
  end
end
