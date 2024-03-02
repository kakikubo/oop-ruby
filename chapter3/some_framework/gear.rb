# frozen_string_literal: true

# Gearが外部インターフェースの一部の場合
module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :wheel

    def initialize(chainring, cog, wheel)
      @chainring = chainring
      @cog = cog
      @wheel = wheel
    end

    # 依存オブジェクト(Wheel)を注入することでGearは変更に強くなる
    # diameterメソッドがあることを前提としている
    def gear_inches
      ratio * wheel.diameter
    end

    def ratio
      chainring / cog.to_f
    end
  end
end
