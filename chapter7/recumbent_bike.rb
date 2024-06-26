# frozen_string_literal: true

module Chapter7
  # リカンベントバイク
  class RecumbentBike < Bicycle
    attr_reader :flag

    def post_initialize(args)
      @flag = args[:flag]
    end

    def local_spares
      { flag: }
    end

    def default_chain
      '9-speed'
    end

    def default_tire_size
      '28'
    end
  end
end
