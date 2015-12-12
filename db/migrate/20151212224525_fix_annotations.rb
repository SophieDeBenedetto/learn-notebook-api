class FixAnnotations < ActiveRecord::Migration
  def change
    remove_column :annotations, :ranges
    add_column :annotations, :ranges, :json, default: {}
  end
end
