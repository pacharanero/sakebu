class CreateDictations < ActiveRecord::Migration
  def change
    create_table :dictations do |t|
      t.string :forename
      t.string :surname
      t.date :dob
      t.string :nhs_number
      t.string :other_identifier
      t.string :urgency
      t.text :notes
      t.datetime :dictated_at
      t.datetime :completed_at
      t.integer :owner
      t.integer :group
      t.string :dictation_path

      t.timestamps
    end
  end
end
