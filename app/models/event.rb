class Event < ActiveRecord::Base
  
  #Has columns: title:string, description:text, date:date, time:time, and location:text.
  
  belongs_to :user
  has_many :invites
  
end
