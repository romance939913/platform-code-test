class Award
  attr_accessor :name, :expires_in, :quality

  def self.update_multiple_awards(awards)
    awards.each do |award|
      award.update
    end
  end

  def initialize(name, expires_in, quality)
    @name = name
    @expires_in = expires_in
    @quality = quality
  end


  def update
    self.quality -= 1 if self.quality > 0
    self.expires_in -= 1
    self.quality -= 1 if self.expires_in < 0 && self.quality > 0
  end


  def decrement_days_until_expiration
    self.expires_in -= 1
  end


  def increment_award_quality_by_1
    self.quality += 1 if self.quality < 50
  end


  def set_quality_to_0_if_expired
    self.quality = 0 if self.expires_in < 0
  end


  # for debugging purposes
  def inspect
    "#{self.class} - name:#{self.name} | expires_in:#{self.expires_in} | quality:#{self.quality}"
  end
end