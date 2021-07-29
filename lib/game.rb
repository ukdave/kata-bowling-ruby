class Game
  def initialize
    @rolls = []
  end

  def roll pins
    @rolls << pins
  end

  def score
    frame = 0
    score = 0
    10.times do
      if strike?(frame)
        score += 10 + strike_bonus(frame)
        frame += 1
      else
        score += sum_of_pins_in_frame(frame)
        score += spare_bonus(frame) if spare?(frame)
        frame += 2
      end
    end
    score
  end

  private

  def strike? frame
    @rolls[frame] == 10
  end

  def strike_bonus frame
    @rolls[frame + 1] + @rolls[frame + 2]
  end

  def spare? frame
    sum_of_pins_in_frame(frame) == 10
  end

  def spare_bonus frame
    @rolls[frame + 2]
  end

  def sum_of_pins_in_frame frame
    @rolls[frame] + @rolls[frame + 1]
  end
end
