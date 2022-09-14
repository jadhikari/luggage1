class CheckInsController < ApplicationController
  before_action :set_check_in, only: %i[ show edit update destroy ]

  # GET /check_ins or /check_ins.json
  def index
    @check_ins = CheckIn.all
  end

  # GET /check_ins/1 or /check_ins/1.json
  def show
  end

  # GET /check_ins/new
  def new
    @check_in = CheckIn.new
    @time = Time.new.strftime("%Y-%m-%d %H:%M")
  end

  # GET /check_ins/1/edit
  def edit
  end

  # POST /check_ins or /check_ins.json
  def create
    @check_in = CheckIn.new(check_in_params)

    respond_to do |format|
      if @check_in.save
        format.html { redirect_to check_in_url(@check_in), notice: "Check in was successfully created." }
        format.json { render :show, status: :created, location: @check_in }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @check_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_ins/1 or /check_ins/1.json
  def update
    respond_to do |format|
      if @check_in.update(check_in_params)
        format.html { redirect_to check_in_url(@check_in), notice: "Check in was successfully updated." }
        format.json { render :show, status: :ok, location: @check_in }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @check_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_ins/1 or /check_ins/1.json
  def destroy
    @check_in.destroy

    respond_to do |format|
      format.html { redirect_to check_ins_url, notice: "Check in was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_in
      @check_in = CheckIn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def check_in_params
      params.require(:check_in).permit(:luggage_num, :name, :room_num, :people_num, :received_date_time, :received_by, :checkout_date_time, :checkout_by, :remarks)
    end
end
