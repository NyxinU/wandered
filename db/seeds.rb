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

post3 = Post.create(
  title: "BLUE BOTTLE COFFEE",
  description: "Sure, this is an American chain of coffee shops from the Oakland, California area but Blue Bottle Coffee have such a great concept and was part of Drift Magazine's list of great places to go to when in need of some great coffee in Tokyo. I stopped at a few of their shops and just had such a great time.
    Their philosophy on coffee culture is amazing but so is their spaces and architecture. Open air, minimalist and simple furniture and just a great atmosphere.
    I do recommend buying a coffee of your choice and then just sit down, have a sip and enjoy some people watching. Especially recommend their places in Kiyosumi and Nakameguro."
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
  {
    url: 'https://exposure.imgix.net/production/photos/djod55adn8ufziow67y19guo29p8vfxn5rw0/original.jpg?fm=pjpg&auto=format&fm=jpg&w=1200',
    post_id: post2.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/5syw9jr5cfska9fsugamtotncvl7jhlunj11/original.jpg?fm=pjpg&auto=format&fm=jpg&w=1500',
    post_id: post3.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/a3ntt0sk0ddfn11r75thj8wsjvtnbt0mdahh/original.jpg?fm=pjpg&auto=format&fm=jpg&w=1200',
    post_id: post3.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/vnvxlhos6g1iinbfx6eku14egakxs1tsxodg/original.jpg?fm=pjpg&auto=format&fm=jpg&w=400',
    post_id: post3.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/3a5tmsbt4ms4lxzg76fecllbbz1b3q2n5csj/original.jpg?fm=pjpg&auto=format&fm=jpg&w=600',
    post_id: post3.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/arpw4z38u77554vpfr00im0ariqibcirr44p/original.jpg?fm=pjpg&auto=format&fm=jpg&w=1200',
    post_id: post3.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/q5xn0yndk9st49petd5fejlavjw42wmywx1i/original.jpg?fm=pjpg&auto=format&fm=jpg&w=600',
    post_id: post3.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/a2hjw2m92vp68x4h0aphmioad0kkax6ygqs5/original.jpg?fm=pjpg&auto=format&fm=jpg&w=600',
    post_id: post3.id
  },
  {
    url: 'https://exposure.imgix.net/production/photos/izj861wlrwosslwthhg8mf768ty26lh7sg0s/original.jpg?fm=pjpg&auto=format&fm=jpg&w=1500',
    post_id: post3.id
  },

])



