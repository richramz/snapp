class Profile < ActiveRecord::Base

  belongs_to :user
 
  # Forked with Missing db configuration file, so column creation pending…
  # Has columns: photo:string location:string website:string bio:text

end