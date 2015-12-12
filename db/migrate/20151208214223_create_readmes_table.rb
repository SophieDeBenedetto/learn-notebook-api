class CreateReadmesTable < ActiveRecord::Migration
  def change
    create_table :readmes do |t|
      t.string :topic
      t.string :unit
    end
  end
end
