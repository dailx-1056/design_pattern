class MagazinesController < ApplicationController
  def index
    @magazines = BookDecorator.decorate_collection Magazine.all
  end

  def new
    @magazine = Magazine.new
  end

  def create
    @magazine = Magazine.create! magazine_params

    redirect_to action: :index
  end

  private

  def magazine_params
    params.require(:magazine).permit Magazine::CREATE_PARAMS
  end
end
