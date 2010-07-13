class Category < ActiveRecord::Base
  acts_as_tree 
  validates_presence_of :name
  validates_presence_of :description
end
