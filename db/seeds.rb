puts "Creating Shelters"

s1 = Shelter.create(name: "Hillsborro Heroes", address: "21 Jump St, Hillsborough, NC 27758")
s2 = Shelter.create(name: "Carrborro Paws", address: "100 Main St, Carrboro, NC 27703")
s3 = Shelter.create(name: "Happy Pets", address: "1155 Franklin St, Chapel Hill NC 27514")

puts "Creating Adopters"
jones = Adopter.create(first_name: "Bob and Jill", last_name: "Jones")
smith = Adopter.create(first_name: "Jack", last_name: "Smith")
milla = Adopter.create(first_name: "Cecilia", last_name: "Milla")
patty = Adopter.create(first_name: "Patty", last_name: "Doe")

puts "Creating Pets"

lucky = Pet.create(name: "Lucky", age: 3, species: "cat", adopted?: true, shelter_id: s2.id, adopter_id: milla.id)
socks = Pet.create(name: "Socks", age: 12, species: "dog", adopted?: true, shelter_id: s3.id, adopter_id: patty.id)
spot = Pet.create(name: "Spot", age: 1, species: "dog", adopted?: true, shelter_id: s2.id, adopter_id:milla.id)
cow = Pet.create(name: "Cow", age: 5, species: "cat", adopted?: false, shelter_id: s1.id, adopter_id: nil)
cornbread = Pet.create(name: "Cornbread", age: 3, species: "cat", adopted?: true, shelter_id: s2.id, adopter_id: milla.id)
gizmo = Pet.create(name: "Gizmo", age: 14, species: "dog", adopted?: true, shelter_id: s2.id, adopter_id: milla.id)
gus = Pet.create(name: "Gus", age: 7, species: "dog", adopted?: true, shelter_id: s3.id, adopter_id: milla.id)
