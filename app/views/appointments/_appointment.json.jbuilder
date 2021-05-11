json.extract! appointment, :id, :date, :hour, :speciality, :patient_id, :doctor_id, :clinic_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
