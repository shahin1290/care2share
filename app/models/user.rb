class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  validates_presence_of :firstname, message: "First name can't be blank"
  validates_presence_of :lastname, message: "Last name can't be blank"

end
