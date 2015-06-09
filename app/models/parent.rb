class Parent < ActiveRecord::Base
  belongs_to :teacher, foreign_key: "teacher_id"

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :teacher_id, presence: true

end
