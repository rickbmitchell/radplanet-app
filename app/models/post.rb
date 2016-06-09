class Post < ActiveRecord::Base
  validates_inclusion_of :name, in: Choices['name']
end
