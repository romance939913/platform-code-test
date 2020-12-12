require_relative "../award"

class BlueStar < Award
  def initialize(name, expires_in, quality)
    super(name, expires_in, quality)
  end

  def update
    self.quality -= 2 if self.quality > 1
    self.decrement_days_until_expiration
    self.quality -= 2 if self.expires_in < 0 && self.quality > 1
  end
end