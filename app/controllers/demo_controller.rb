class DemoController < ApplicationController
  def initialize
      @expense_controller = ExpenseController.new
  end

  def index
    
  end

  def generate_create_expense_result
    @result = @expense_controller.create_expense
    render action: "index"
  end

  def generate_get_all_expenses
    @get_expenses_result = @expense_controller.get_all_expenses
    render action: "index"
  end

  def generate_expense_date_range
      @range_date_result = @expense_controller.get_expenses_date_range
      render action: "index"
  end

  def generate_expense_start_date
      @start_date_result = @expense_controller.get_expenses_start_date
      render action: "index"
  end

   def generate_expense_end_date
      @end_date_result = @expense_controller.get_expenses_end_date
      render action: "index"
  end

  def generate_expense_no_date
      @no_date_result = @expense_controller.get_expenses_no_date
      render action: "index"
  end
end
