sakebu models sketch
====================


dictation
---------
* patient_name:string
* patient_dob:date
* patient_nhs_number:string
* urgency:string
* notes:text
* dictated_at:datetime
* completed_at:datetime
* dictator_id:integer (foreign key)
* typing_pool_id:string (foreign key)
* dictation_path (path to the sound file)

belongs_to: dictator
belongs_to: typing_pool


dictator
--------
* forename
* surname
* user_id
* password
* contact details for queries
* ?language (trying to imagine the universal use case...)
* ?location

has_many: :dictations


typing_pool
-----------

has_many: :dictations
has_many: :typists


typist
------

belongs_to: :typing_pool
