class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.string :content
      t.integer :readme_id
    end
  end
end
