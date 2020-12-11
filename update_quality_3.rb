require 'byebug'

require_relative 'award.rb'
require_relative './oop/award_class'
require_relative './oop/blue_first'
require_relative './oop/blue_compare'

def update_quality(awards)
  arr = []

  awards.each do |award|
    case award[:name]
    when 'Blue First'
      new_award = BlueFirst.new(award[:name], award[:expires_in], award[:quality])
    when 'Blue Compare'        
      new_award = BlueCompare.new(award[:name], award[:expires_in], award[:quality])
    else
      new_award = AwardClass.new(award[:name], award[:expires_in], award[:quality])
    end
    new_award.update
    arr.push(new_award)
  end

  debugger
  return arr
end

brennan = { name: 'the brennan award', expires_in: 20, quality: 45 }
blue_first = { name: 'Blue First', expires_in: 2, quality: 30 }
blue_compare = { name: 'Blue Compare', expires_in: 5, quality: 35 }

puts update_quality([brennan, blue_first, blue_compare])