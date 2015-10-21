class Paper < ActiveRecord::Base
  validates :name, :date, :time, :students, presence: true
  validates :students, numericality: {greater_than_or_equal_to: 1}
  validates :name, uniqueness: true
end
