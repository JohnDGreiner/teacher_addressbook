class Teacher < ActiveRecord::Base
  has_many :parents

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true


end
