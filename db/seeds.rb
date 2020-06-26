p = Parent.create(name: "Jordan", username: "Jordles", password: "Jordles", email:"jordles@gmail.com", kid_names:"Stella")
p2 = Parent.create(name: "Tracie", username: "Strawang", password: "Samm1226", email:"Strawang@gmail.com", kid_names: "Sydney")

k = Kid.create(name: "Stella", username: "Saber", password: "Saber1020", birthday: "10-20-10")
k2= Kid.create(name: "Sydney", username: "Syd", password: "Samm1226", birthday: "12-26-99")

c = Chore.create(name: "Dust", description:"Dust all surfaces in the living room.")
c2= Chore.create(name: "Clean your room", description: "Don't just throw things in the closet. Take out the trash too!")
c3= Chore.create(name: "Feed the Dogs", description: "Feed the Dogs daily at 5pm")
c4= Chore.create(name: "Mop", description:"Mop the living room, use bleach in the water")

b = Badge.create(name: "Super KID", description: "You have completed 10 chores! You are a great helper!")
b2 = Badge.create(name: "Chore Hero!", description:"100 CHORES! Wow you're awesome!")
