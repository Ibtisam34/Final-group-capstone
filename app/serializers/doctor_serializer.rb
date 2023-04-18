class VehicleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image, :specialization, :phone, :image, :availability
end
