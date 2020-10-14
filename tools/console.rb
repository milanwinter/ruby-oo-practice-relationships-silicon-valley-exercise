require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console




#Create Startup Here
facebook = Startup.new("Facebook", "Mark Zuckerburg", "Social Media")
twitter = Startup.new("Twitter", "Some guy", "Social Media")
food = Startup.new("Big Food", "Mac D", "Food")

#Create Venture Capitalist

dale = VentureCapitalist.new("Dale Bigie", 2000000000)
brock = VentureCapitalist.new("Brock Hampton", 1500000)
sylvia = VentureCapitalist.new("Sylvia Silvy", 200000000000000000)



#Create Funding rounds through Startup
facebook.sign_contract(dale,150000,"Seed")
facebook.sign_contract(dale, 20000, "Angel")
facebook.sign_contract(brock, 2000, "Angel")
twitter.sign_contract(sylvia, 20, "Seed")
food.sign_contract(brock,20000,"Angel")


#Create Funding rounds through Startup

sylvia.offer_contract(facebook,14000,"Seed")
brock.offer_contract(twitter,200000, "Angel")



















binding.pry
0 #leave this here to ensure binding.pry isn't the last line