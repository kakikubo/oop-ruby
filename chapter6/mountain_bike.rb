# frozen_string_literal: true

module Chapter6
  # マウンテンバイク
  class MountainBike < Bicycle
    attr_reader :front_shock, :rear_shock

    def post_initialize(args)
      @front_shock = args[:front_shock]
      @rear_shock = args[:rear_shock]
    end

    def local_spares
      { rear_shock:, front_shock: }
    end

    def default_tire_size
      '2.1'
    end
  end
end
