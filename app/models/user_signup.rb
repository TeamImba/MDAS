class UserSignup < ActiveRecord::Base
  def created_at_date
    self.created_at.strftime("%B %d %Y")
  end
  
  def created_at_time
    self.created_at.strftime("%H:%M")
  end
end