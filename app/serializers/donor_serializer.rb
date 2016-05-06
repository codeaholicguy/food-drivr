class DonorSerializer < ActiveModel::Serializer
  attributes :id, :phone, :name, :email, :avatar, :created_at, :updated_at
  has_many :addresses
end
