require 'byebug'

require_relative 'award.rb'
require_relative './oop/award_class'

def update_quality(awards)
  arr = []

  awards.each do |award|
    case award[:name]
    when 'Blue First'
      new_award = AwardClass.new(award[:name], award[:expires_in], award[:quality])
    when 'Blue Compare'        
      new_award = AwardClass.new(award[:name], award[:expires_in], award[:quality])
    else
      new_award = AwardClass.new(award[:name], award[:expires_in], award[:quality])
    end
    new_award.update
    arr.push(new_award)
  end

  return arr
end

brennan = { name: 'the brennan award', expires_in: 20, quality: 45 }
blue_first = { name: 'Blue First', expires_in: 2, quality: 30 }

puts update_quality([brennan, blue_first])