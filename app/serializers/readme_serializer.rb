class ReadmeSerializer < ActiveModel::Serializer
  attributes :id, :topic, :unit, :title, :annotation_ids, :content
  # :note_ids

end