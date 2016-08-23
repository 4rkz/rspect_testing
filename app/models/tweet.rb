class Tweet < ActiveRecord::Base
  attr_accessor :status

  def public?
   if self.status.present?
      true
   else
      false
   end
  end
end
