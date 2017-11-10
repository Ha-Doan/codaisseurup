class Event < ApplicationRecord
  #attr_accessible :ends_at,  :starts_at
  belongs_to :user
  has_many :photos
  has_many :bookings, dependent: :destroy
  has_many :guests, through: :bookings, source: :user
  after_initialize :init

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validate  :end_date_is_after_start_date, on: :update




#######
#######

def end_date_is_after_start_date
  if :ends_at <= :starts_at
    puts "huhu"
    errors.add(:ends_at, "must be at least one day after the start day")
  end
end
def init
  self.price ||= 0.0           #will set the default value only if it's nil
  self.includes_food ||= false #let's you set a default association
  self.includes_drink ||= false
  self.active ||= true
end
def belongs_to
end
end
