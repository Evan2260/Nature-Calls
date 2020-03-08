class Restroom < ApplicationRecord
  # belongs_to :user

  validates :business_name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :sanitation, presence: true
  validates :restroom_image, presence: true
  validates :payment?, allow_blank: true
  validates :paying_customer?, allow_blank: true
  validates :employee_only?, allow_blank: true
  validates :handicap_stall?, allow_blank: true
end
