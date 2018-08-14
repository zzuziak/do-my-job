Booking.delete_all
Job.delete_all
User.delete_all

puts "Clearing database..."

10.times do
  User.create!(email: "#{Faker::Internet.email}", password: "123456")
end

Job.create!([{
  title: "Aesthetic Surgeon",
  category: "healthcare",
  location: "Berlin",
  description: "Aesthetic surgery including face-job, boob-job, fat reduction",
  price: 50,
  guided: false,
  date: Date.new(2018,9,20),
  user_id: 5
  },
  {
    title: "Musician",
    category: "arts & design",
    location: "Amsterdam",
    description: "piano, guitar, flutes",
    price: 60,
    guided: true,
    date: Date.new(2018,11,20),
    user_id: 6
    },
    {
      title: "President",
      category: "politics",
      location: "USA",
      description: "How it feels to be a Donald",
      price: 1,
      guided: false,
      date: Date.new(2018,8,10),
      user_id: 6
      },
      {
        title: "Assistant",
        category: "business & finance",
        location: "Canada",
        description: "Xero, copy, coffee",
        price: 999,
        guided: false,
        date: Date.new(2020,8,10),
        user_id: 9
        }
])

Booking.create!([{
  user_id: 2,
  job_id: 1,
  message: "user 2 job 1"
},
{
  user_id: 4,
  job_id: 2,
  message: "user 4 job 2"
},
{
  user_id: 2,
  job_id: 3,
  message: "user 2 job 3"
},
{
  user_id: 7,
  job_id: 4,
  message: "user 7 job 4"
}
])

puts "Seeding..."
puts "Done! Successfully created #{Job.count} jobs, #{User.count} users and #{Booking.count} bookings, yo :) "
