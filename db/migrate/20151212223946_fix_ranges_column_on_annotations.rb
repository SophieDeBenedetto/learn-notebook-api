class FixRangesColumnOnAnnotations < ActiveRecord::Migration
  def change
    remove_column :annotations, :ranges
    add_column :annotations, :ranges, :integer, array: :true
  end
end
