require_relative "../award"

class BlueCompare < Award
  def initialize(name, expires_in, quality)
    super(name, expires_in, quality)
  end

  def update
    self.increment_award_quality_by_1
    self.quality += 1 if self.quality < 50 && self.expires_in < 11
    self.quality += 1 if self.quality < 50 && self.expires_in < 6
    self.decrement_days_until_expiration
    self.set_quality_to_0_if_expired
  end
end
