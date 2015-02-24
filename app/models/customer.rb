class Customer < ActiveRecord::Base
  has_many :reserves
end
