class Traveller < ApplicationRecord
  has_one :account

  has_many :reviews
  has_many :natparks, :through => :reviews

end
