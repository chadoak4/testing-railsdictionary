
#
User.create(email: "gavin@example.com", password: "sekret")
User.create(email: "gavin@example.com", password: "alsosekret")
User.create(email: "toni@example.com", password: "supersekret")

Definition.create(word:"Mars",meaning:"the Solar System's fourth innermost planet",word_type:"noun",sentence: "Mars will be our new home")
Definition.create(word:"Gravity Assist",meaning:"An effect through which an orbiting object, such as a spacecraft or a comet, gains or loses speed by virtue of the gravitational might of a planet or other celestial object that it passes.",word_type:"noun",sentence:"SpaceX uses gravity assist to visit Mars")
Definition.create(word:"Habitable Zone",meaning:"A region around a star where planets with liquid water may be present.",word_type:"noun",sentence:"Mars is a habitable zone")
Definition.create(word:"Moon",meaning:"A large body orbiting a planet.",word_type:"noun",sentence:"Mars has two moons, Phobos and Deimos")
Definition.create(word:"Interstellar Space",meaning:"The dark regions of space located between the stars.",word_type:"noun",sentence:"The space between Pluto and the next solar system is considered Interstellar Space" )
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
