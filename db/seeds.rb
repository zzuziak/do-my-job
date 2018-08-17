Booking.delete_all
Job.delete_all
User.delete_all

puts "Clearing database..."

User.create!([{
  email: "test1@example.com",
  password: "123456",
  first_name: "Angela",
  last_name: "Merkel",
  remote_photo_url: "http://g4.gazetaprawna.pl/p/_wspolne/pliki/3096000/3096521-angela-merkel-657-323.jpg"
},
{
  email: "test2@example.com",
  password: "123456",
  first_name: "Donald",
  last_name: "The Duck",
  remote_photo_url: "https://webiconspng.com/wp-content/uploads/2017/09/Donald-Trump-PNG-Image-92058.png"
},
{
  email: "test3@example.com",
  password: "123456",
  first_name: "Ed",
  last_name: "Sheeran",
  remote_photo_url: "https://progresstoday.net/wp-content/uploads/2018/05/ed-sheeran.jpg"
}])

Job.create!([{
  title: "Aesthetic Surgeon",
  category: "healthcare",
  location: "Kottbusser Damm 20, Berlin",
  description: "Aesthetic surgery including face-job, boob-job, fat reduction",
  price: 50,
  guided: false,
  date: Date.new(2018,9,20),
  user_id: 1,
  remote_photo_url: "https://img.thedailybeast.com/image/upload/c_crop,d_placeholder_euli9k,h_1440,w_2560,x_0,y_0/dpr_2.0/c_limit,w_740/fl_lossy,q_auto/v1508201254/171013-Plesset-Plastic-Surgeon-Gone-Bad-hero_rzviix"
  },
  {
    title: "Musician",
    category: "arts & design",
    location: "Leipziger 42, Berlin",
    description: "Coming to Berlin for a gig... But frankly would rather take a day off and enjoy Berlin. Anyone in? \n piano, guitar, flutes and groupies included",
    price: 60,
    guided: true,
    date: Date.new(2018,11,20),
    user_id: 3,
    remote_photo_url: "https://timedotcom.files.wordpress.com/2018/04/ed-sheeran-songwriter-premiere.jpg"
    },
    {
      title: "President",
      category: "politics",
      location: "Kochstrasse 1, Berlin",
      description: "So the thing is I'm supposed to go for a G8 in Berlin but honestly? I'd rather go enjoy local brothels and their european offerings. No stress, it's an easy job. Just don't think too much and you'll be alright!",
      price: 1,
      guided: false,
      date: Date.new(2018,8,25),
      user_id: 2,
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
        user_id: 1,
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
          user_id: 1,
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
            user_id: 3,
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
              user_id: 3,
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
                user_id: 3,
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
                  user_id: 3,
                  remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiVXIeRvh1UqkfFBpcduKpaiNo9uy4kOc6coIyUlMIMBlS8hYU"
                  },
                  {
                    title: "Professor",
                    category: "academia",
                    location: "Buschallee 5, Berlin",
                    description: "To be or not to be.",
                    price: 100,
                    guided: false,
                    date: Date.new(2018,11,1),
                    user_id: 3,
                    remote_photo_url: "http://depo.ba/media/pictures/2011/05/16/dcd3945e86d674d6d50f3b07439ec3d2.jpg"
                    },
                    {
                      title: "Meth cook",
                      category: "science",
                      location: "Alexanderplatz, Berlin",
                      description: "Baking bread aaaaallll day",
                      price: 100,
                      guided: false,
                      date: Date.new(2018,11,1),
                      user_id: 3,
                      remote_photo_url: "https://ssl-gfx.filmweb.pl/q/q/71.0.jpg"
                      },
                      {
                        title: "Girlfriend",
                        category: "services",
                        location: "Urbanstrasse 60, Berlin",
                        description: "Make other people's endings happy. However they want you to.",
                        price: 180,
                        guided: false,
                        date: Date.new(2018,9,1),
                        user_id: 3,
                        remote_photo_url: "http://2.bp.blogspot.com/-j6JjhNhZVrs/VXMRqkdeVRI/AAAAAAAAE0c/Ul9Orzo7NEQ/s1600/prostitute.jpeg"
                        },
                          {
                            title: "Chef at Tim Raue",
                            category: "gastronomy",
                            location: "Friedrichstrasse 20, Berlin",
                            description: "Show your skills in the kitchen!",
                            price: 180,
                            guided: false,
                            date: Date.new(2018,9,1),
                            user_id: 3,
                            remote_photo_url: "http://media.safebee.com/assets/images/2015/4/chef%20tips.jpg.838x0_q67_crop-smart.jpg"
                            },
                            {
                              title: "Clown",
                              category: "entertainment",
                              location: "Seumerstrasse 20, Berlin",
                              description: "Perfect to get rid of your CLOWN FOBIA!",
                              price: 50,
                              guided: false,
                              date: Date.new(2018,9,1),
                              user_id: 3,
                              remote_photo_url: "https://i.ytimg.com/vi/YWlaZbwZpBM/maxresdefault.jpg"
                              }
])

Booking.create!([{
  user_id: 2,
  job_id: 1,
  message: "Hi, interested! Can we negotatie the price maybe?"
},
{
  user_id: 3,
  job_id: 2,
  message: "I'm the worst when it comes to music but I should never give up on my dreams, right?!"
},
{
  user_id: 3,
  job_id: 3,
  message: "Does it include living in the White House?"
},
{
  user_id: 2,
  job_id: 4,
  message: "I love tasks. I need to do tasks. I love ticking tasks off."
}
])

Review.create! ([{
  title: "Impressive",
  message: "All what was promised - delivered. Groupies especially!",
  job_id: 2,
  user_id: 1,
  rating: 5
},
{
  title: "Love my fans!",
  message: "Can I do another gig, please? Please!!!!!",
  job_id: 2,
  user_id: 2,
  rating: 5
},
{
  title: "White House - TOP NOTCH",
  message: "Spent there entire day. Jacuzzi, food, strippers. What else?",
  job_id: 3,
  user_id: 3,
  rating: 5
}
  ])

puts "Seeding..."
puts "Done! Successfully created #{Job.count} jobs, #{User.count} users and #{Booking.count} bookings, yo :) "
