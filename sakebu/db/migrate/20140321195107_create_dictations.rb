class CreateDictations < ActiveRecord::Migration
  def change
    create_table :dictations do |t|
      t.string :forename
      t.string :surname
      t.string :nhs_number
      t.string :path_to_audio

      t.timestamps
    end
  end
end
