class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name,:school, presence: true
  
  has_many :notes, dependent: :destroy
  has_many :appointments, dependent: :destroy
  
  has_many :patients, through: :notes, dependent: :destroy
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
        
end
