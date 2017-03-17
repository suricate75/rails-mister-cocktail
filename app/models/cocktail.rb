class Cocktail < ApplicationRecord

has_many :doses, :dependent => :destroy
has_many(:ingredients, { :through => :doses })
validates :name, uniqueness: true, presence: true
 has_attachment :photo

end

# A cocktail must have a name, and names should be unique

