
require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
      :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }

holiday_hash[:summer][:fourth_of_july][1]
 
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |season, holiday|
    holiday_hash[:winter][season] << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |season, holiday|
    holiday_hash[:spring][season] << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  
  storage = holiday_hash[:winter].map do |season, items|
    items
  end
  storage.flatten
end

def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each do |season, holiday|
    #binding.pry
    
    puts season.to_s.capitalize! + ":"
    
    holiday.each do |holiday, items|
      
      items = items.join(", ")
      
      holidays = holiday.to_s.capitalize!.split("_")
     
     puts "  " + holidays + ": " + items
      
    end
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







