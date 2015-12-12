class ReadmeSerializer < ActiveModel::Serializer
  attributes :id, :topic, :unit, :title, :sentence_ids, :content
  # :note_ids

end