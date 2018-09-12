class Cat < ApplicationRecord
  
  include ActionView::Helpers::DateHelper
  
  # COLORS = %w(black orange brown white grey red)
  COLORS = ['black', 'red', 'orange', 'brown', 'white', 'grey']
  
  # validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :sex, inclusion: { in: %w(F M) }
  validates :color, inclusion: {in: COLORS,
    message: "%{color} is not a valid color!"}
  
  def age
    Date.today.year - birth_date.year
  end
  
  
  
end