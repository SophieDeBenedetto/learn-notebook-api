class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :sentence_id, :readme_id
end