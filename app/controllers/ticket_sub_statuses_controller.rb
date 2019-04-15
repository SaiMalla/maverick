class TicketSubStatusesController < ApplicationController
  before_action :set_ticket_sub_status, only: [:show, :edit, :update, :destroy]

  # GET /ticket_sub_statuses
  # GET /ticket_sub_statuses.json
  def index
    @ticket_sub_statuses = TicketSubStatus.all
  end

  # GET /ticket_sub_statuses/1
  # GET /ticket_sub_statuses/1.json
  def show
  end

  # GET /ticket_sub_statuses/new
  def new
    @ticket_sub_status = TicketSubStatus.new
  end

  # GET /ticket_sub_statuses/1/edit
  def edit
  end

  # POST /ticket_sub_statuses
  # POST /ticket_sub_statuses.json
  def create
    @ticket_sub_status = TicketSubStatus.new(ticket_sub_status_params)

    respond_to do |format|
      if @ticket_sub_status.save
        format.html { redirect_to @ticket_sub_status, notice: 'Ticket sub status was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_sub_status }
      else
        format.html { render :new }
        format.json { render json: @ticket_sub_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_sub_statuses/1
  # PATCH/PUT /ticket_sub_statuses/1.json
  def update
    respond_to do |format|
      if @ticket_sub_status.update(ticket_sub_status_params)
        format.html { redirect_to @ticket_sub_status, notice: 'Ticket sub status was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_sub_status }
      else
        format.html { render :edit }
        format.json { render json: @ticket_sub_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_sub_statuses/1
  # DELETE /ticket_sub_statuses/1.json
  def destroy
    @ticket_sub_status.destroy
    respond_to do |format|
      format.html { redirect_to ticket_sub_statuses_url, notice: 'Ticket sub status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_sub_status
      @ticket_sub_status = TicketSubStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_sub_status_params
      params.require(:ticket_sub_status).permit(:ticketsubstatus, :creatredby, :ticket_status_id)
    end
end
