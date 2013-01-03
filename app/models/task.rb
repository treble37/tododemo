class Task < ActiveRecord::Base
  attr_accessible :description, :duedate #, :taskable_id, :taskable_type
  belongs_to :taskable, polymorphic: true
end
