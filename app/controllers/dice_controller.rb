class DiceController < ApplicationController
  def home
    render({:template => "dice_templates/home"})
  end
  
  def roll
    @num_dice = params.fetch("num_dice").to_i
    @num_sides = params.fetch("num_sides").to_i
    @rolls = []
    @num_dice.times do
      roll = rand(@num_sides) + 1
      @rolls.push(roll)
    end
    render({:template => "dice_templates/roll"})
  end
end
