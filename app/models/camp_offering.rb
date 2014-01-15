class CampOffering < ActiveRecord::Base
  attr_accessible :assistant, :camp_id, :end_date, :location_id, :start_date, :teacher

  has_and_belongs_to_many :registrations
  belongs_to :location
  belongs_to :camp

  OFFERING_WEEKS_RANGE = {
                          1 => {
                                  :start => Date.new(2014,6,16),
                                  :end => Date.new(2014,6,20)
                          },
                          2 => {
                                  :start => Date.new(2014,6,16),
                                  :end => Date.new(2014,6,20)
                          },
                          3 => {
                                  :start => Date.new(2014,6,16),
                                  :end => Date.new(2014,6,20)
                          },
                          4 => {
                                  :start => Date.new(2014,6,16),
                                  :end => Date.new(2014,6,20)
                          },
                          5 => {
                                  :start => Date.new(2014,6,16),
                                  :end => Date.new(2014,6,20)
                          },
                          6 => {
                                  :start => Date.new(2014,6,16),
                                  :end => Date.new(2014,6,20)
                          }
  }

  def name
    camp.title
  end

  def students
    students = Array.new
    registrations.each do |r|
      students << "#{r.student_first_name} #{r.student_last_name}"
    end
    return students
  end

  def price
    camp.price
  end

  def open_spots
    camp.capacity - registrations.count
  end

  def at_capacity?
    open_spots == 0 ? true : false
  end
end
