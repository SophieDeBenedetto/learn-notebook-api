class CreateSentenceNotes < ActiveRecord::Migration
  def change
    create_table :sentence_notes do |t|
      t.integer :sentence_id
      t.integer :note_id
    end
  end
end
