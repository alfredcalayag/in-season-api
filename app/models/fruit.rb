class Fruit < ActiveRecord::Base
  validates :fruit_name, uniqueness: true
end
