class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  has_many :addresses
  has_many :reviews
  has_many :orders

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  # Add password validation rules as needed (e.g., length, complexity).
end

# :password, :role
