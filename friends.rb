def get_name(person)
  return person[:name]
end

#this function was tested against @person2
def favourite_tv_show(person_2)
  return person_2[:favourites][:tv_show]
end

def likes_to_eat(persons, search_snack)
  for snack in persons[:favourites][:snacks]
    return true if snack == search_snack
  end
  return false
end

def add_friend(person, new_friend)

person[:friends] << "new_friend"

end

def remove_friend(person, ex_friend)
  person[:friends].delete(ex_friend)
end
