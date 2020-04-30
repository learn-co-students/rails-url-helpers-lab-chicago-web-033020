class Student < ActiveRecord::Base
  # attr_accessor :active
  def to_s
    self.first_name + " " + self.last_name
  end

  # def active(active=false)
  #   if active == nil 
  #     @active = false
  #   end 
  #   @active = active
  # end
end