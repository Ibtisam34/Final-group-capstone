class AppointmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :pickup_date, :return_date, :created_at
  belongs_to :user
  belongs_to :doctor
end
