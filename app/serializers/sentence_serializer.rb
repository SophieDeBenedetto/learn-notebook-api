class SentenceSerializer < ActiveModel::Serializer
  attributes :id, :content, :tag_type, :title, :highlighted, :readme_id
  # , :note_ids

end