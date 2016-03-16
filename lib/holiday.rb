require 'pry'

holiday_supplies = {
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

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_supplies, supply = "Balloons")
 holiday_supplies[:winter].each do |holiday, supplies|
    supplies << supply
 end
end


def add_supply_to_memorial_day(holiday_hash, supply = "Grill")
  holiday_supplies[:spring][:memorial_day] << supply << "Table Cloth"
end

def add_new_holiday_with_supplies(holiday_supplies, season, new_holiday_name, supplies_list)
  holiday_supplies[:fall][:columbus_day] = ["Flags", "Parade Floats", "Italian Food"]
  holiday_supplies[:winter][:valentines_day] = ["Cupid Cut-Out", "Candy Hearts"]
  holiday_supplies
end


def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].values.flatten
end


def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|l| l.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_supplies)
  holiday_supplies.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end








