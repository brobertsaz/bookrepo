class School < ApplicationRecord
  has_many :students, class_name: "user", foreign_key: "user_id"
end
