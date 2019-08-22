class Sensor < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true

  after_save :broadcast_mode

  def self.male_toilet
    find_by_name('male')
  end

  def self.female_toilet
    find_by_name('female')
  end

  private

  def broadcast_mode
    ActionCable.server.broadcast 'sensors', name: name, mode: closed
  end

end
