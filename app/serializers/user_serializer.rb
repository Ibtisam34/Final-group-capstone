class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :email, :role, :created_at
end
