require 'byebug'

require_relative 'award'
require_relative './other_awards/blue_first'
require_relative './other_awards/blue_compare'
require_relative './other_awards/blue_star'
require_relative './other_awards/blue_distinction_plus'

class AwardFactory
  TYPES = {
    'Blue First' => BlueFirst,
    'Blue Compare' => BlueCompare,
    'Blue Star' => BlueStar,
    'Blue Distinction Plus' => BlueDistinctionPlus
  }

  def self.for(name, expires_in, quality)
    (TYPES[name] || Award).new(name, expires_in, quality)
  end
end