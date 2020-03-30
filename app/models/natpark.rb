class Natpark < ApplicationRecord
has_many :reviews
has_many :travellers, :through => :reviews


 def self.sort_by_review_count()
    self.all.sort_by { |park| park.reviews.count}.reverse
 end

def self.designations()

  self.select(:designation).distinct
end

def self.by_parktype_count()
  self.where(:designation=>park["designation"]).count
end

end
