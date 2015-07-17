class Result < ActiveRecord::Base
  belongs_to :win , :class_name => 'User'
  belongs_to :loss , :class_name => 'User'
end
