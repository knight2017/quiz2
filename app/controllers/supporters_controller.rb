class SupportersController < ApplicationController

  def index
     params[:pgnum] ||= 0
     session[:pgnum]= params[:pgnum]
     @supporters = Supporter.order(status: :desc).offset(session[:pgnum].to_i*7).limit(7)
     a = Supporter.count
     a % 7 == 0 ? @numofpg = a/7 : @numofpg = a/7 + 1
  end

  def new
    @supporter = Supporter.new
  end

  def create
    params_new = params.require(:supporter).permit(:name, :email, :department,:message, :status)
    @supporter= Supporter.new params_new
    @supporter.status = "Undone"
    if @supporter.save
      redirect_to supporter_path(@supporter)
    else
      render :new
    end
  end
  def show
      @supporter = Supporter.find params[:id]
  end

  def edit
     @supporter = Supporter.find params[:id]
  end

  def update
    params_new = params.require(:supporter).permit(:name, :email, :department,:message, :status)
    @supporter = Supporter.find params[:id]
   if @supporter.update(params_new)
     redirect_to supporter_path(@supporter)
   else
     render :edit
   end
  end

  def destroy
  @supporter = Supporter.find params[:id]
  @supporter.destroy
  redirect_to  supporters_path
  end



end
