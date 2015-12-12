class AddContentToReadmes < ActiveRecord::Migration
  def change
    add_column :readmes, :content, :string
  end
end
