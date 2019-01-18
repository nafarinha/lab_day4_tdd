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

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_friend(lender, lendee, amount)
  if lender[:monies] >= amount
    lender[:monies] -= amount
    lendee[:monies] += amount
    p "Loan of #{amount} from #{lender[:name]} to #{lendee[:name]} complete."
    p "#{lender[:name]} funds: #{lender[:monies]}"
    p "#{lendee[:name]} funds: #{lendee[:monies]}"
  else
    p "Not enough funds to complete transfer."
  end
end

def favourite_foods(people)
  foods = Array.new
  for person in people
    for snack in person[:favourites][:snacks]
      foods.push(snack)
    end
  end
  return foods
end

def no_friends(people)
  no_friends_person = Array.new

  for person in people
    if person[:friends].count() == 0
      no_friends_person.push(person[:name])
    end
  end
  return no_friends_person
end
