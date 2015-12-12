class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.integer :readme_id
      t.string :tag_type
      t.string :content
      t.boolean :title
      t.boolean :highlighted
    end
  end
end
