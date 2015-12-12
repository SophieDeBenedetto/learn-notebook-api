class AddTitleToReadme < ActiveRecord::Migration
  def change
    add_column :readmes, :title, :string
  end
end
