class TestsController < ApplicationController
  def index
    @tests = Test.order(id: :desc)
  end

  def show
  end

  def new
  end

  def create
  end
end
