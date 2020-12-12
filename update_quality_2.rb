# require_relative 'award.rb'

# Once the expiration date has passed, quality score degrades twice as fast

# The quality of an award is never negative.

# "Blue First" awards actually increase in quality the older they get

# The quality of an award is never more than 50

# "Blue Distinction Plus", being a highly sought distinction, never decreases in quality

# "Blue Compare", similar to "Blue First", increases in quality as the expiration date approaches; 
# Quality increases by 2 when there are 10 days or less left, and by 3 where there are 5 days or less left, 
# but quality value drops to 0 after the expiration date.

# Just for clarification, an award can never have its quality increase above 50, 
# however "Blue Distinction Plus", being highly sought, its quality is 80 and it never alters.

def update_quality(awards)
  awards.each do |award|
    case award.name
      
    when 'Blue First'
      award.quality += 1 if award.quality < 50
      award.expires_in -= 1
      award.quality += 1 if award.expires_in < 0 && award.quality < 50
    when 'Blue Compare'
      award.quality += 1 if award.quality < 50
      award.quality += 1 if award.quality < 50 && award.expires_in < 11
      award.quality += 1 if award.quality < 50 && award.expires_in < 6
      award.expires_in -= 1
      award.quality = 0 if award.expires_in < 0
    when 'Blue Star'
      award.quality -= 2 if award.quality > 1
      award.expires_in -= 1
      award.quality -= 2 if award.expires_in < 0 && award.quality > 1
    when 'Blue Distinction Plus'
    else
      award.quality -= 1 if award.quality > 0
      award.expires_in -= 1
      award.quality -= 1 if award.expires_in < 0 && award.quality > 0
    end

  end
end
