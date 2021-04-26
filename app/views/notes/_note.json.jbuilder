json.extract! note, :id, :message, :consult_reason, :patient_id, :doctor_id, :created_at, :updated_at
json.url note_url(note, format: :json)
