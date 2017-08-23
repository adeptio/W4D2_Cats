class CatRentalRequest < ApplicationRecord
  validates :status, :includes ["PENDING", "APPROVED", "DENIED"]
  validates :cat_id, :start_date, :end_date, :status, presence: true

  belongs_to :cat, dependent: :destroy
end
