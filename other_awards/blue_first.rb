require_relative "../award"

class BlueFirst < Award
  def initialize(name, expires_in, quality)
    super(name, expires_in, quality)
  end

  def update
    self.increment_award_quality_by_1
    self.decrement_days_until_expiration
    self.quality += 1 if self.expires_in < 0 && self.quality < 50
  end
end
