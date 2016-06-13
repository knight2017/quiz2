class HomeController < ApplicationController

    def index
    session[:word] = params[:word]
    perpg =  7
    params[:pgnum] ||= 0
    session[:pgnum] = params[:pgnum]
    postn = Supporter.search(session[:word])
    @supporters = Supporter.search(session[:word]).order(status: :desc).offset(perpg*params[:pgnum].to_i).limit(perpg)
    postn.length%perpg == 0 ? @numofpg = postn.length/perpg  : @numofpg = postn.length/perpg + 1
    end




end
