# frozen_string_literal: true

require 'rspec'

describe MountainBike do
  context 'Sサイズのマウンテンバイクの場合' do
    let(:mountain_bike) { described_class.new(size: 'S', front_shock: 'Manitou', rear_shock: 'Fox') }

    it 'サイズがSであること' do
      expect(mountain_bike.size).to eq 'S'
    end

    it 'スペアが正しいこと' do
      expect(mountain_bike.spares).to eq(
        chain: '10-speed',
        tire_size: '23', # 間違い
        rear_shock: 'Fox',
        front_shock: 'Manitou'
      )
    end
  end
end
