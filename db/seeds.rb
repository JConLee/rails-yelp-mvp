puts 'Cleaning database...'
Restaurant.destroy_all


puts 'Creating restaurants...'

restaurants_attributes = [

{
  name: 'Dragon Castle',
  address: '23, Elephant Street',
  category: 'chinese'
},

{
 name: 'Yamagoya',
 address: '18, The Cut ',
 category: 'japanese'
},

{
 name: 'The Canton Arms',
 address: '1, Aldbert Terrace ',
 category: 'french'

}

  ]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
