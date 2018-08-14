puts 'Cleaning database...'
Job.destroy_all

puts 'Creating jobs...'
jobs_attributes = [
  {
    title:     'Waitress at hipster restaurant',
    category:   'academia',
    location:    'Berlin',
    description:  'One day at the best restaurant in town',
    price: '50',
    date: '10/09/2018',
  }
]
Job.create!(jobs_attributes)
puts 'Finished!'


