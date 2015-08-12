class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # show all members on comsole desk
  def show_all
    @members = Member.unscoped.all

    respond_to do |format|
      format.html { render "members", layout: "console_desks" }
    end

  end

  # GET /members/1
  # GET /members/1.json
  def show
    respond_to do |format|
      format.html { render :layout => "console_desks" }
    end
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit

    respond_to do |format|
      format.html { render :layout => "console_desks" }
    end
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    puts member_params

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    # puts member_params
    # member_params.avatar = member_params[:file]

    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      # params[:member]
      params.require(:member).permit!
      # (:email, :name, :birthday, :date_in, :graduated_from, :role, :status, :del_flg, :avatar, :right)
    end
end



