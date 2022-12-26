class Adopter < ActiveRecord::Base
  has_many :pets, dependent: :destroy
  has_many :shelters, through: :pets

  def full_name
     "#{self.first_name} #{self.last_name}"
  end
  def my_pets
     pets.adopter_id == self.id
  end
  def adopt(pet)
    if !pet.adopted? && !pet.adopter_id
        pet.update(adopted?: true, adopter_id: self.id)
    end
  end
  def fav_pet
    if self.pets.count != 0
        self.pets.group_by{|p| p.species}
        .sort{|s| s.count}
        .first[0]
    else
        nil
    end
    # return nil if self.pets.count == 0
    # self.pets
    # .group_by{|p| p.species}
    # .max_by{|s| s.count}[0]
    end
end
