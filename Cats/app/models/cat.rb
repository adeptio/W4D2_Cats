require 'date'


class Cat < ApplicationRecord
  COLORS = ["black", "white", "brown", "orange", "grey"]

  validates :color, inclusion: { in: COLORS, message: "Invalid color" }
  validates :sex, inclusion: ['M', 'F']
  validates :birth_date, :color, :name, :sex, presence: true

  def age
    end_date = Date.today
    start_date = self.birth_date
    range = (end_date - start_date)
    age = (range / 365)
    age
  end


end
