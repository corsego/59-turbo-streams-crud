return unless Rails.env == 'development'

system 'clear'

puts 'Destroy all records'
puts '*' * 80

Message.destroy_all

puts 'Create new records'
puts '*' * 80

MAX_MESSAGES_COUNT = 20

#create Posts
MAX_MESSAGES_COUNT.times do
  Message.create( body: Faker::Restaurant.review )
 print '.'
end

puts ' '
puts ' '
puts "That's all folks!"
puts '*' * 80
p "Created #{Message.count} #{'message'.pluralize(Message.count)}"
