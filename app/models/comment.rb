class Comment < ActiveRecord::Base
  belongs_to :review
  belongs_to :commenter, { class_name: :Person, foreign_key: :person_id }
end
