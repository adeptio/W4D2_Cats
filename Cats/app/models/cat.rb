require 'date'

class Cat < ApplicationRecord
  COLORS = [:black, :white, :brown, :orange, :grey]

  validates :birth_date, :color, :name, :sex, presence: true
  validates :color, inclusion: { in: COLORS, message: "Invalid color" }
  validates :sex, inclusion: { in: ['M', 'F'] }

  def age
    end_date = Date.today
    start_date = self.birth_date
    range = (end_date - start_date)
    age = (range / 365)
    age
  end

  
end
