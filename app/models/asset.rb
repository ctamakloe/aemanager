class Asset < ActiveRecord::Base
  has_many :expenses, :dependent => :destroy
  belongs_to :user

  validates_uniqueness_of :asset_id, :message => 'ID must be unique. The ID you entered belongs to an existing asset. Please try again with a different Asset ID.'
  validates_presence_of :asset_id
  validates_presence_of :name
  validates_presence_of :description
end
