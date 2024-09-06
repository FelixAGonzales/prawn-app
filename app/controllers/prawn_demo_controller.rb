class PrawnDemoController < ApplicationController
  def show
    @book = Book.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
      format.pdf { render :layout => false }
    end
  end
end
