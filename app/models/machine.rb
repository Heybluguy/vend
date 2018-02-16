class Machine < ApplicationRecord
  belongs_to :owner
  has_many :machine_snacks, dependent: :destroy
  has_many :snacks, through: :machine_snacks
end
