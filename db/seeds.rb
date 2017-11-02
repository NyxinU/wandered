# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

user1 = User.create ({
  username: 'invisibleman',
  password: 'teddywinters',
  first_name: 'Ivan',
  last_name: 'Bliminse'
})

Post.destroy_all

post1 = Post.create(
  title: "TOKYO!",
  description: "We loved it so much we had to come back."
)

post2 = Post.create(
  title: "Sakura Season",
  description: "This year we went during Sakura Season, meaning it was prime time for cherry blossoms. While the trees and colours in Kyoto hade yet to reach full bloom, Tokyo was in its finest dress during our visit.
    So expect a lot of the white and cerise in this one."
)

Picture.destroy_all

pictures = Picture.create([
  {
    url: 'https://exposure.imgix.net/production/photos/umb6h26310lxz96s1u714mxd6mwccxgfwcdf/original.jpg?fm=pjpg&auto=format&fm=jpg&w=1500',
    post_id: post1.id 
  },
  {
    url: 'https://exposure.imgix.net/production/photos/05qw42z2wlzb9jlp8o8vin561x0xyw6lpw2p/original.jpg?fm=pjpg&auto=format&fm=jpg&w=1200',
    post_id: post2.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/8pwpe5wzjz3rexj55y5qi6aq0fcyxdnw36oi/original.jpg?fm=pjpg&auto=format&fm=jpg&w=400',
    post_id: post2.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/s3rc636mnxmn231cx8sr1jyfw1l4hqndahr5/original.jpg?fm=pjpg&auto=format&fm=jpg&w=600',
    post_id: post2.id
  },
])



