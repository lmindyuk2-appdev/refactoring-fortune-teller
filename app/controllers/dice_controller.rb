class DiceController < ApplicationController
  def infinity_and_beyond
    @number_of_dice = params.fetch("number_of_dice")
    @how_many_sides = params.fetch("how_many_sides")

    @array_of_rolls = Array.new
    @number_of_dice.to_i.times do
      @array_of_rolls.push(rand(@how_many_sides.to_i)+1)
    end

    render({:template => "dice_templates/infinity.html.erb"})
  end
end
