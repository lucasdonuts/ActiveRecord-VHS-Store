class Rental < ActiveRecord::Base
  belongs_to :client
  belongs_to :vhs

  def due_date
    self.created_at + 7.days
  end

  def self.past_due_date
    self.select{ |rental| rental.updated_at > rental.due_date }
  end

end