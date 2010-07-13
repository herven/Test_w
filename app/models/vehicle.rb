class Vehicle < ActiveRecord::Base
  validates_presence_of :brand_id
  validates_presence_of :name
  validates_presence_of :door_nbr
  validates_presence_of :wheel_nbr
  validates_presence_of :car_type
  belongs_to :brand
  
  named_scope :car, lambda {
    {:conditions => {:car_type => "Car"}}
  }
  
  named_scope :moto, lambda {
    {:conditions => {:car_type => "Moto"}}
  }
  
end
