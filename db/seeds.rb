puts "Deleting old data..." 

Andrew.destroy_all   
Project.destroy_all

puts "Creating seed data..." 

a1 = Andrew.create(name: "Andrew Owens", background: "test background info about me!", description: "Newly graduated from Flatiron School's Software Engineering program. Looking for my next great opportunity.")

p1  = Project.create(
    title: "Rooted Plant Exchange",
    phase: 5,
    description: "Rooted Plant Exchange was created to allow gardeners, growers, and green thumbs to connect with the plant-loving community and to allow users to trade and give away plants to others in their area. It also provides educational information through the Plant Library and User Submitted Plants section.",
    video: "https://www.loom.com/share/2972fb5fa9ef4c8c8817d8eda7437e3d",
    github: "https://github.com/andrrowens/rooted-plant-exchange-frontend",
    image1: "https://i.imgur.com/1g0bx3N.png",
    image2: "https://i.imgur.com/TQOdKnH.png",
    image3: "https://i.imgur.com/7ASUrO5.png")

u1 = User.create(username: "andrrowens", password: "Auggie118")


puts "✅ Done seeding!"


# t.string "title"
# t.integer "phase"
# t.text "description"
# t.string "video"
# t.string "github"
# t.string "image1"
# t.string "image2"
# t.string "image3"