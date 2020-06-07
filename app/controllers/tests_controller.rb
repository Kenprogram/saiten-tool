class TestsController < ApplicationController
  def index
    @tests = Test.order(id: :asc)
  end

  def show
    @test = Test.find(params[:id])
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      flash[:success] = "Testが保存されました。"
      redirect_to @test
    else      
      flash.now[:danger] = 'Test が投稿されませんでした'
      render :new
    end
  end

  private 

  def test_params
    params.require(:test).permit(:title)
  end

end
