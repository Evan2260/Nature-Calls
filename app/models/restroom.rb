class Restroom < ApplicationRecord
  belongs_to :user

  validates :business_name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :sanitation, presence: true
  validates :restroom_image, presence: true
  validates :payment?
  validates :paying_customer?
  validates :employee_only?
  validates :handicap_stall?
end
