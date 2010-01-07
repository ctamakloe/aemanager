class Asset < ActiveRecord::Base
  has_many :expenses, :dependent => :destroy
end
