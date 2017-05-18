class Oystercard

 attr_reader :balance, :entry_station, :exit_station, :journeys

 MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1

 def initialize(balance=0)
    @balance = balance
    @journeys = []
  end

 def top_up(amount)
    raise "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if @balance + amount > MAXIMUM_BALANCE
    @balance += amount
  end

 def touch_in(entry_station)
      fail "Balance too low : Top up Please" if @balance < MINIMUM_BALANCE
      @entry_station = entry_station
  end

 def touch_out(exit_station)
    deduct(MINIMUM_BALANCE)
    @entry_station
    @exit_station = exit_station
  end

 def completed_journeys
    @journeys << {:entry_station => @entry_station, :exit_station => @exit_station}
  end

 private

 def deduct(amount)
    @balance -= amount
  end

end
