class CatRentalRequest < ApplicationRecord
  validates :status, :includes ["PENDING", "APPROVED", "DENIED"]
  validates :cat_id, :start_date, :end_date, :status, presence: true
  # validates :

  belongs_to :cat, dependent: :destroy

  def overlapping_requests
    range = DBConnection.execute(<<-SQL)
      SELECT

      FROM

      JOIN cats
        ON cat.id = cat_rental_requests.cat_id

      WHERE
    SQL
  end
end
