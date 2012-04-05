class Task < ActiveRecord::Base
  attr_accessible :comment, :deadline, :description, :name, :person
end
