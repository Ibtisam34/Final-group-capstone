class AppointmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :pickup_date, :return_date, :user_id, :doctor_id, :created_at
end
