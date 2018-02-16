class Snack < ApplicationRecord
  belongs_to :machine_snacks, dependent: :destroy
  belongs_to :machine, through: :machine_snacks
end