class CalculatorsController < ApplicationController
  def new
  end
  def calculate
    calculator = Calculator.new
    @result = calculator.add(params[:numbers])
    render :new
  end
end
