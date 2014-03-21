sakebu models sketch
====================


Dictation
---------
* forename:string
* surname:string
* dob:date
* nhs_number:string
* other_identifier:string
* urgency:string
* notes:text
* dictated_at:datetime
* completed_at:datetime
* user_id:integer (foreign key)
* group_id:string (foreign key)
* dictation_path (path to the sound file)

belongs_to: user
belongs_to: group


User
----
* forename:string
* surname:string
* password:string
* email:string
* user_group:string

has_many: :dictations


Group
-----
* group_name:string
* user_ids:integer (foreign keys)

has_many: :dictations
has_many: :users

