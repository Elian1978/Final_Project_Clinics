class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attr_accessor :email, :encrypted_password, :first_name, :last_name, :age, :language, :sex, :phone, :provincia, :canton, :distrito, :barrio  
end
