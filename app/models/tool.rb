class Tool < ActiveRecord::Base
  def free?
    price.blank? || price.zero?
  end

  def self.not_overpriced
    where("price <= ?", 1000.00).order("price asc")
  end
end
