class DoctorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :specialization, :email, :phone, :created_at
  belongs_to :user
end
