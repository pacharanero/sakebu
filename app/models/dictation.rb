class Dictation < ActiveRecord::Base
  attr_accessible :completed_at, :dictated_at, :dictation_path, :dob, :forename, :group, :nhs_number, :notes, :other_identifier, :owner, :surname, :urgency
  
  belongs_to :user
  belongs_to :group

end
