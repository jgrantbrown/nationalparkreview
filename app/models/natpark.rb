class Natpark < ApplicationRecord
has_many :reviews
has_many :travellers, :through => :reviews


end
