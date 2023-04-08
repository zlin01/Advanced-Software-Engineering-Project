class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  @@amountconcerts = 0;
  @@concertlist = []

  def self.concertlist
    return @@concertlist
  end

  def self.add_concertlist(concert)
    @@concertlist << concert
    @@amountconcerts += 1
  end
end
