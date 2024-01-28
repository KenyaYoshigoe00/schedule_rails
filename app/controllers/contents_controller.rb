class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end
  
  def new
    @content = Content.new
  end
  
  def create
    @content = Content.new(params.require(:content).permit(:title, :start_date, :end_date, :memo, :all_day))
    if @content.save
      flash[:notice] = "スケジュールを新規作成しました"
      redirect_to :contents
    else
      render "new"
    end
  end
  
  def show
    @content = Content.find(params[:id])
  end
  
  def edit
    @content = Content.find(params[:id])
  end
  
  def update
    @content = Content.find(params[:id])
    if @content.update(params.require(:content).permit(:title, :start_date, :end_date, :memo, :all_day))
      flash[:notice] = "スケジュールIDが「#{@content.id}」の情報を更新しました"
      redirect_to :contents
    else
      render "edit"
    end
  end
  
  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    flash[:notice] = "予定を削除しました"
    redirect_to :contents
  end
end
