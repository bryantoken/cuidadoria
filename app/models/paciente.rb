class Paciente < ApplicationRecord
    has_many :registro_cuidadors
    has_many :users, through: :registro_cuidadors
end
