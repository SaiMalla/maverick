class TicketSubTypesController < ApplicationController
  before_action :set_ticket_sub_type, only: [:show, :edit, :update, :destroy]

  # GET /ticket_sub_types
  # GET /ticket_sub_types.json
  def index
    @ticket_sub_types = TicketSubType.all
  end

  # GET /ticket_sub_types/1
  # GET /ticket_sub_types/1.json
  def show
  end

  # GET /ticket_sub_types/new
  def new
    @ticket_sub_type = TicketSubType.new
  end

  # GET /ticket_sub_types/1/edit
  def edit
  end

  # POST /ticket_sub_types
  # POST /ticket_sub_types.json
  def create
    @ticket_sub_type = TicketSubType.new(ticket_sub_type_params)

    respond_to do |format|
      if @ticket_sub_type.save
        format.html { redirect_to @ticket_sub_type, notice: 'Ticket sub type was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_sub_type }
      else
        format.html { render :new }
        format.json { render json: @ticket_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_sub_types/1
  # PATCH/PUT /ticket_sub_types/1.json
  def update
    respond_to do |format|
      if @ticket_sub_type.update(ticket_sub_type_params)
        format.html { redirect_to @ticket_sub_type, notice: 'Ticket sub type was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_sub_type }
      else
        format.html { render :edit }
        format.json { render json: @ticket_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_sub_types/1
  # DELETE /ticket_sub_types/1.json
  def destroy
    @ticket_sub_type.destroy
    respond_to do |format|
      format.html { redirect_to ticket_sub_types_url, notice: 'Ticket sub type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_sub_type
      @ticket_sub_type = TicketSubType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_sub_type_params
      params.require(:ticket_sub_type).permit(:ticketsubtype, :createdby, :active, :ticket_type_id)
    end
end
