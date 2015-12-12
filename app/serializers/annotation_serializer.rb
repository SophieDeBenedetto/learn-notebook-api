class AnnotationSerializer < ActiveModel::Serializer
  attributes :id, :text, :quote, :ranges, :uri, :readme_id
end
