class Asset < ActiveRecord::Base
  has_many :expenses
end
