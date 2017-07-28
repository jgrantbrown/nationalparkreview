class Parktype < ApplicationRecord

 def self.sort_by_review_count()
    self.all.sort_by { |park| park.reviews.count}.reverse
 end

def self.designations()
  self.select(:designation).distinct
end

def self.find_by_designation()
   self.find_by ["designation= ?", params[:id]]
end


end
