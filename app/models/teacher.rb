class Teacher < ActiveRecord::Base
  has_many :parents
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true


end
