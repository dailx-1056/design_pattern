class Api::V1::MagazinesController < Api::ApiBaseController
  def index
    magazines = BookDecorator.decorate_collection Magazine.all

    render_json magazines, each_serializer: Api::V1::MagazineSerializer
  end

  def show
    magazine = Magazine.first.decorate

    render_json magazine, serializer: Api::V1::MagazineSerializer
  end
end
