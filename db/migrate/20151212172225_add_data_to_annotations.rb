class AddDataToAnnotations < ActiveRecord::Migration
  def change
    add_column :annotations, :ranges, :string, array: :true
    add_column :annotations, :quote, :string
    add_column :annotations, :text, :string
    add_column :annotations, :uri, :string
    remove_column :annotations, :content, :string 
  end
end

