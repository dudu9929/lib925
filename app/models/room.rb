class Room < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :bookings




  def self.search(name,building,size,status)
    where("name LIKE ? and building LIKE? and size LIKE? and status LIKE? ",  "%#{name}%","%#{building}%","%#{size}%","%#{status}%")
  end



end



