class Ingredient < ApplicationRecord
validates :name, uniqueness: true, presence: true
has_many :doses

end


# An ingredient must have a name, and names should be unique
