# frozen_string_literal: true

# リカンベントバイク
class RecumbentBike < Bicycle
  def initialize(size: nil, chain: nil, tape_color: nil)
    @tape_color = tape_color
    super(size:, chain:)
  end

  def spares
    super.merge(tape_color:)
  end
end
