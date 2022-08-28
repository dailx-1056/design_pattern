class SerializerBase < ActiveModel::Serializer
  def detail_response
    @instance_options[:detail_response]
  end
end
