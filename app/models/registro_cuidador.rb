class RegistroCuidador < ApplicationRecord
  belongs_to :user
  before_create :set_timestamps

  private

  def set_timestamps
    self.created_at = Time.zone.now
    self.updated_at = Time.zone.now
  end
end
