class ConsoleDesksController < ApplicationController
  before_action :set_console_desk, only: [:show, :edit, :update, :destroy]

  # GET /console_desks
  # GET /console_desks.json
  def index
    respond_to do |format|
      format.html { render :layout => false }
    end
  end

  # GET /console_desks/1
  # GET /console_desks/1.json
  def show
  end

  # GET /console_desks/new
  def new
    @console_desk = ConsoleDesk.new
  end

  # GET /console_desks/1/edit
  def edit
  end

  # POST /console_desks
  # POST /console_desks.json
  def create
    @console_desk = ConsoleDesk.new(console_desk_params)

    respond_to do |format|
      if @console_desk.save
        format.html { redirect_to @console_desk, notice: 'Console desk was successfully created.' }
        format.json { render :show, status: :created, location: @console_desk }
      else
        format.html { render :new }
        format.json { render json: @console_desk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /console_desks/1
  # PATCH/PUT /console_desks/1.json
  def update
    respond_to do |format|
      if @console_desk.update(console_desk_params)
        format.html { redirect_to @console_desk, notice: 'Console desk was successfully updated.' }
        format.json { render :show, status: :ok, location: @console_desk }
      else
        format.html { render :edit }
        format.json { render json: @console_desk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /console_desks/1
  # DELETE /console_desks/1.json
  def destroy
    @console_desk.destroy
    respond_to do |format|
      format.html { redirect_to console_desks_url, notice: 'Console desk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_console_desk
      @console_desk = ConsoleDesk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def console_desk_params
      params[:console_desk]
    end
end
