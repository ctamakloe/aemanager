class Expense < ActiveRecord::Base
  belongs_to :asset

  validates_presence_of :amount
  validates_presence_of :remarks
end
