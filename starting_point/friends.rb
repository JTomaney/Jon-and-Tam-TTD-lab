def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for entry in person[:favourites][:snacks]
    if  entry == food
      return true
    end
  end
  return false
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(array)
  total = 0
  for person in array
    total += person[:monies]
  end
  return total
end

def loan(lender,lendee,amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def everyone_favourite_foods(array)
  list = []
  for person in array
    list += person[:favourites][:snacks]
  end
  return list
end

def no_mates(array)
  list = []
  for person in array
    if person[:friends] == []
      list.push(person)
    end
  end
  return list
end
