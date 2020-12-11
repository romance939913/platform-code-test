class AwardClass
  attr_accessor :name, :expires_in, :quality

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

  def inspect
    "#{self.class} - name:#{self.name} | expires_in:#{self.expires_in} | quality:#{self.quality}"
  end
end