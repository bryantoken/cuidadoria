class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :registro_cuidadores
  has_many :pacientes, through: :registro_cuidadors
   def admin?
    self.admin
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
