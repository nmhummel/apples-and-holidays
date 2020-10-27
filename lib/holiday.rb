require 'pry'

# Question 1
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
  holiday_hash[:summer][:fourth_of_july][1]
end


# Question 2
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |holiday, data| 
      data.each do |key, value|
        value.push("Balloons")
      end
  end
end


# Question 3
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end


# Question 4
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_hash

end

#Question 5
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do |holiday, supply| 
    supply
  end.flatten
end

#Question 6
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays| #first tier
      puts "#{season.capitalize}:"
    holidays.each do |holiday, supply| #second tier
      puts "  #{holiday.to_s.split('_').collect {|list| list.capitalize}.join(" ") }: #{supply.join(", ")}"
    end

  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end


# Question 7 - (holiday_hash, season, holiday_name, supply_array)
def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays| 
    holidays.map do |holiday, supplies| 
      holiday if supplies.include?("BBQ") 
      end
    end.flatten.compact
end






