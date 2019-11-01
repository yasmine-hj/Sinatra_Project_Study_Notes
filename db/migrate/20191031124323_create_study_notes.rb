class CreateStudyNotes < ActiveRecord::Migration
  
  def change
    create_table :study_notes do |t|
      t.string :title
      t.string :topic
      t.text :notes
      t.integer :user_id
      t.timestamps
    end
  end
end
