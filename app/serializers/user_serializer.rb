class UserSerializer < ActiveModel::Serializer
  attributes :id, :phone, :description, :name, :email, :avatar, :role_id, :settings, :organization

  has_one :organization

  def settings
    custom_settings = {}
    custom_settings[:notifications] = object.setting.notifications
    custom_settings[:active] = object.setting.active
    custom_settings
  end
  def organization
    nil
  end
end
