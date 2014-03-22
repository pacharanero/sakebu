json.array!(@dictations) do |dictation|
  json.extract! dictation, :id, :forename, :surname, :nhs_number, :path_to_audio
  json.url dictation_url(dictation, format: :json)
end
