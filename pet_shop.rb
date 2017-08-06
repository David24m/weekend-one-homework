def pet_shop_name(shop)
  name = shop[:name]
  return name
end

def total_cash(cash)
  name = cash[:admin][:total_cash]
  return name
end

def add_or_remove_cash(cash, money_in)
  money = cash[:admin][:total_cash] += money_in
  return money
end

def pets_sold(number)
  name = number[:admin][:pets_sold]
  return name
end

def increase_pets_sold(number, increase)
  name = number[:admin][:pets_sold] =+ increase
  return name
end

def stock_count(array_1)
  count = array_1[:pets].length
  return count
end

def pets_by_breed(pet_shop, breed)
  pets = []
  for pet in pet_shop[:pets] do
    if pet[:breed] == breed
      pets.push(pet)
    end
  end
  return pets
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets] do
    if pet[:name] == name
      return pet
    end
  end
  # no pets found from here on

return nil

end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets] do
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
  # no pets found from here on

end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  number = customer[:pets].count
  return number
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  number = customer[:pets].count
  return number
end

# def customer_can_afford_pet(customer, new_pet)
#   can_buy_pet = false
#   for can_buy_pet in customer[:cash] do
#   end
#     can_buy_pet = true if customer[:cash] >= new_pet[:price]
#   end
#   return can_buy_pet
# end

# def sell_pet_to_customer(pet_shop, pet, customer)
#   for pet in pet_shop[:pets] do
#     if pet[:name] == name
#       return pet
#       customer[:pets].push(pet)
#     end
#   end
# end
#   customer_pet_count(customer) = customer[:pets].count
#   return customer_pet_count(customer)
#
#   pets_sold(pet_shop) = admin[:pets_sold] + customer[:pets].count
#   return pets_sold
#
#   total_cash(pet_shop) = admin[:total_cash] + customer[:pets][:price]
#   return total_cash
# end
