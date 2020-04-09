class Victim < ApplicationRecord

  validates :date, :last_name, :first_name, :age, :victim_of, :country, :city, :zip_code, presence: true

  geocoded_by :full_address

  after_validation :geocode, if: :full_address_changed?

  def full_address
    "#{address}, #{zip_code}, #{city}, #{country}"
  end

  def full_address_changed?
    address_changed? || zip_code_changed? || city_changed? || country_changed?
  end

  def self.with_coordinates
    where.not(latitude: nil, longitude: nil)
  end
end
