class Fruit < ActiveRecord::Base
  validates :fruit_name, uniqueness: true
  has_many :favorites
  has_many :users, through: :favorites
end
