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
  location: "Kottbusser Damm 20, Berlin",
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
    location: "Leipziger 42, Berlin",
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
      location: "Kochstrasse 1, Berlin",
      description: "How it feels to be a Donald",
      price: 1,
      guided: false,
      date: Date.new(2018,8,25),
      user_id: 6,
      remote_photo_url: "https://cdn.theatlantic.com/assets/media/img/mt/2016/09/RTX1GZCO/lead_720_405.jpg"
      },
      {
        title: "Assistant",
        category: "business & finance",
        location: "Grolmanstrasse 42, Berlin",
        description: "Xero, copy, coffee",
        price: 999,
        guided: false,
        date: Date.new(2020,8,10),
        user_id: 9,
        remote_photo_url: "https://overblown.co.uk/wp-content/uploads/2018/01/o-MULTI-TASK-facebook.jpg"
        },
        {
          title: "Pilot",
          category: "transportation",
          location: "Segitzdamm 20, Berlin",
          description: "Very decent views, possibility to travel, hot cabin crew included",
          price: 199,
          guided: false,
          date: Date.new(2018,10,10),
          user_id: 4,
          remote_photo_url: "https://qph.fs.quoracdn.net/main-qimg-01cac1487a385db388df3d46261afcbc-c"
          },
          {
            title: "Pharmacist",
            category: "healthcare",
            location: "Torstrasse 20, Berlin",
            description: "Take a day to help people get the right medication suited to their needs!",
            price: 29,
            guided: true,
            date: Date.new(2018,9,5),
            user_id: 4,
            remote_photo_url: "https://img-aws.ehowcdn.com/340x221p/photos.demandstudios.com/getty/article/77/91/89793593.jpg"
            },
            {
              title: "General",
              category: "politics",
              location: "Urbanstrasse 25, Berlin",
              description: "Give orders, meet with politicians, wear a cool uniform!",
              price: 129,
              guided: true,
              date: Date.new(2018,8,18),
              user_id: 4,
              remote_photo_url: "https://steamcdn-a.akamaihd.net/steam/apps/606950/header.jpg"
              },
              {
                title: "Priest",
                category: "politics",
                location: "Boxhagener Strasse 25, Berlin",
                description: "Enjoy the sacred life among other priests and nuns.",
                price: 1029,
                guided: false,
                date: Date.new(2018,11,18),
                user_id: 5,
                remote_photo_url: "http://www.jokesoftheday.net/jokes-archive/2014/12/22/The-Priest-and-the-Politician.jpg"
                },
                {
                  title: "Therapist",
                  category: "healthcare",
                  location: "Lichterberger Strasse 5, Berlin",
                  description: "If you can't figure out your own life - why not do it for the others?",
                  price: 10,
                  guided: false,
                  date: Date.new(2018,11,1),
                  user_id: 5,
                  remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiVXIeRvh1UqkfFBpcduKpaiNo9uy4kOc6coIyUlMIMBlS8hYU"
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
