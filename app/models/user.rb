class User < ActiveRecord::Base
  has_many :favorites
  has_many :fruits, through: :favorites
end
