Booking.delete_all
Job.delete_all
User.delete_all

puts "Clearing database..."

User.create!([{
  email: "test1@example.com",
  password: "123456"
},
{
  email: "test2@example.com",
  password: "123456"
},
{
  email: "test3@example.com",
  password: "123456"
},
{
  email: "test4@example.com",
  password: "123456"
},
{
  email: "test5@example.com",
  password: "123456"
},
{
  email: "test6@example.com",
  password: "123456"
},
{
  email: "test7@example.com",
  password: "123456"
},
{
  email: "test8@example.com",
  password: "123456"
},
{
  email: "test9@example.com",
  password: "123456"
},
{
  email: "test10@example.com",
  password: "123456"
}])

Job.create!([{
  title: "Aesthetic Surgeon",
  category: "healthcare",
  location: "Berlin",
  description: "Aesthetic surgery including face-job, boob-job, fat reduction",
  price: 50,
  guided: false,
  date: Date.new(2018,9,20),
  user_id: 5,
  remote_photo_url: "https://img.thedailybeast.com/image/upload/c_crop,d_placeholder_euli9k,h_1440,w_2560,x_0,y_0/dpr_2.0/c_limit,w_740/fl_lossy,q_auto/v1508201254/171013-Plesset-Plastic-Surgeon-Gone-Bad-hero_rzviix"
  },
  {
    title: "Musician",
    category: "arts & design",
    location: "Amsterdam",
    description: "piano, guitar, flutes and groupies included",
    price: 60,
    guided: true,
    date: Date.new(2018,11,20),
    user_id: 6,
    remote_photo_url: "https://timedotcom.files.wordpress.com/2018/04/ed-sheeran-songwriter-premiere.jpg"
    },
    {
      title: "President",
      category: "politics",
      location: "USA",
      description: "How it feels to be a Donald",
      price: 1,
      guided: false,
      date: Date.new(2018,8,25),
      user_id: 6,
      remote_photo_url: "https://cdn.theatlantic.com/assets/media/img/mt/2016/09/RTX1GZCO/lead_720_405.jpg?mod=1533691850"
      },
      {
        title: "Assistant",
        category: "business & finance",
        location: "Canada",
        description: "Xero, copy, coffee",
        price: 999,
        guided: false,
        date: Date.new(2020,8,10),
        user_id: 9,
        remote_photo_url: "https://overblown.co.uk/wp-content/uploads/2018/01/o-MULTI-TASK-facebook.jpg"
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
