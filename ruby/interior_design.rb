# INTERIOR DESIGNER JOB APPLICATION
application = {
  name: "Sarah Designer",
  address: "123 fordham rd, fake city, FS",
  email: "fake@fakemail.com",
  phone: "555-555 5555",
  fave_blue: "navy",
  wallpaper_pref: ["Paisley", "Chevrons"],
  ombre: "So last season"
}

# update value
application[:name] = "Sarah Fakest"

# add new value to array
application[:wallpaper_pref] << "Abstract woodsy sceenes"

# add new value pair
application[:hired] = true

# store value in a variable
stored_key = :email
p application[stored_key]

# two values in a variable
two_stored_keys = application[:name] + application[:address]
p application[two_stored_keys] # returns nil

#print two values
p application[:name] + application[:address] # returns name and adress togethet. 

# print hash
p application





