class Traveller < ApplicationRecord
  has_many :reviews
  has_many :natparks, :through => :reviews

end
