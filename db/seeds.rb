User.create!(name:  "Jay Jones",
             email: "jj5201@gmail.com",
             password:              "yerpyerp",
             password_confirmation: "yerpyerp",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Cocina del PUEBLO",
             email: "cocina@gmail.com",
             password:              "yerpyerp",
             password_confirmation: "yerpyerp",
             admin: false,
             activated: true,
             activated_at: Time.zone.now,
             user_type: "Vendor",
             tag_line: "Fresh Mexican Cooperative Style",
             street_one: "7633 MacAuthor Blvd",
             city: "Oakland",
             state: "CA",
             zip_code: "94619",
             phone_number: "510-577-0847",
             website: "www.facebook.com/cocinadelpueblo",
             description: "Founded in 2014, We are a small, 
             all woman owned cooperative in East Oakland, serving healthy, 
             fresh, & delicious Mexican food.",
             category: "Resturaunt",
             tags: "Mexican, Fresh Food, Cooperative, East Oakland")

User.create!(name:  "PUEBLO",
             email: "pueblo@peopleunited.org",
             password:              "yerpyerp",
             password_confirmation: "yerpyerp",
             admin: false,
             activated: true,
             activated_at: Time.zone.now,
             user_type: "Community Organization",
             tag_line: "Addressing the most pressing needs of marginalized 
                        communities of color since 1989",
             street_one: "3528 Foothill Boulevard",
             city: "Oakland",
             state: "CA",
             zip_code: "94601",
             phone_number: "510-535-2525",
             website: "www.peopleunited.org",
             description: "Originally founded to address children health issues, 
                          PUEBLO currently has three 
                          focus areas to bring holistic change to the most marginalized 
                          communities in Oakland: Healthy Neighborhoods, Pathways to Employment and Ownership, 
                          and Peaceful Communities.
                          We run school gardens and farmer markets, find employment for 
                          system invovled youth and adults,
                          and work to create peaceful communities through 
                          advocacy and systemic reform.",
             category: "Multi-Issue",
             tags: "East Oakland, Fruitvale, Cooperatives, Police Reform, Gardens, Sustainability, 
                    Youth, Employment, Re-Entry Services")




99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

