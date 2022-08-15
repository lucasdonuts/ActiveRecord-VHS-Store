class Client < ActiveRecord::Base
  has_many :rentals
  has_many :vhs, through: :rentals

  def self.first_rental(name, home_address, movie_name)
    movie = Movie.find_by(name: movie_name)
    client = Client.new(name: name, home_address: home_address)
    # client.rentals.new()
  end
end