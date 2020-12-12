require_relative "../award"

class BlueDistinctionPlus < Award
  def initialize(name, expires_in, quality)
    super(name, expires_in, quality)
  end

  def update
  end
end