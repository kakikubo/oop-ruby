# frozen_string_literal: true

# 旅行の準備はよりかんたんになる
class Trip
  attr_reader :bicycles, :customers, :vehicle

  # この 'mechanic' 引数はどんなクラスのものでも良い
  def prepare(preparers)
    preparers.each { |preparer| preparer.prepare_trip(self) }
  end
end

# すべての準備者(Preparer)は'prepare_trip'に応答するダック
class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(customers)
    # ...
  end
end

# ドライバー
class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end

  def gas_up(vehicle)
    # ...
  end

  def fill_water_tank(vehicle)
    # ...
  end
end

# 整備士
class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each do |bicycle|
      prepare_bicycle(bicycle)
    end
  end
end
