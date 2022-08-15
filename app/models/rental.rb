class Rental < ActiveRecord::Base
  belongs_to :client
  belongs_to :vhs

  def due_date
    self.created_at + 7.days
  end
end