class Pet < ActiveRecord::Base
  belongs_to :adopter
  belongs_to :shelter

  def self.oldest
    all.max_by{ |p| p.age }
  end
  def self.average_age
    all.sum(:age) / all.count
  end
  def in_dog_years
    if species.downcase == 'dog'
        self.age * 5
    else
        "Not a dog"
    end
  end
end
