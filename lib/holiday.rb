require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  count = 0 
  word = ""
  holiday_hash.each do |season, holiday_info|
    count += 1 
    if count == 2 
      holiday_info.each do |holiday, supplies|
        word = supplies[1]
      end 
    end 
    
  end 
  word 
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  count = 0 
  holiday_hash.each do |season, holiday_info|
    count += 1 
    if count == 1 
      holiday_info.each do |holiday, supplies|
        supplies << supply 
      end 
    end 
  end 

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  count = 0 
  holiday_hash.each do |season, holiday_info|
    count += 1 
    if count == 4 
      holiday_info.each do |holiday, supplies|
        supplies << supply 
      end 
    end 
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array 
  holiday_hash 

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  count = 0 
  word = []
  holiday_hash.each do |season, holiday_info|
    count += 1 
    if count == 1 
      holiday_info.each do |holiday, supplies|
        supplies.each do |i|
          word << i 
        end 
      end 
    end 
  end 
  word 
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  count = 0 
  holiday_hash.each do |season, holiday_info|
    season = season.to_s 
    new_season = season.tr(':', '')
    new_season = "#{new_season}:"
    new_season = new_season.capitalize 
    print "#{new_season}\n" 
    holiday_info.each do |holiday, supplies|
      holiday = holiday.to_s
      new_holiday = holiday.tr(':', '')
      new_holiday = new_holiday.
      #new_holiday = new_holiday.capitalize
      new_holiday = new_holiday.split(/_/)
      new_holiday = new_holiday.join(" ")
      
      print "  #{new_holiday}: "
      supplies.each do |i|
        i = i.to_s
        new_i = i.tr(':', '')
        new_i = new_i.capitalize
        count += 1 
        if count == 1 
          print "#{new_i}"
          count += 1
        elsif count == 3
          print ", #{new_i}"
        end 
        
         
      end 
      count = 0 
      print "\n"
    end 
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







