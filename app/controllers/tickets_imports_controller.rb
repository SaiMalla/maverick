class TicketsImportsController < ApplicationController
  def new
    @tickets_import = TicketsImport.new
  end

  def create
    
      @tickets_import = TicketsImport.new(params[:tickets_import])
      
    if @tickets_import.save
      redirect_to tickets_path
    else
      render :new
    end
  end
end
