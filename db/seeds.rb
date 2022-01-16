puts "Seed is running..."
AdminUser.create!(email: 'admin@example.com', password: '12345678', password_confirmation: '12345678')
puts "Superadmin User created."
Role.create!(name: 'admin')
Role.create!(name: 'organizer')
Role.create!(name: 'venue_owner')
Role.create!(name: 'user')
puts "All Roles Created."
User.create!(email: 'demo@example.com', password: '12345678')
puts "Demo User created."
Permission.create!(user_id: 1, role_id: 4)
User.create!(email: 'organizer@bce.com', password: '12345678')
puts "Organizer User created."
Permission.create!(user_id: 2, role_id: 2)
User.create!(email: 'venue_owner@bce.com', password: '12345678')
puts "Venue User created."
Permission.create!(user_id: 3, role_id: 3)
User.create!(email: 'admin@bce.com', password: '12345678')
puts "Admin User created."
Permission.create!(user_id: 4, role_id: 1)
puts "Seed Successfully Done."