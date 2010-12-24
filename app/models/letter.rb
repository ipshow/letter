class Letter < ActiveRecord::Base
  attr_accessible :content, :recipient, :province, :address, :postcode, :published_at
end
