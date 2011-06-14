class Product < ActiveRecord::Base

  def permalink
    "#{self.id}_#{self.name.parameterize}"
  end
end
