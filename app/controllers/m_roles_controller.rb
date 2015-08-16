class MRolesController < ApplicationController
  before_action :set_m_role, only: [:show, :edit, :update, :destroy]
  protect_from_forgery :except => :destroy

  # GET /m_roles
  # GET /m_roles.json
  def index
    @m_roles = MRole.all

    render layout: "console_desks"
  end

  # GET /m_roles/1
  # GET /m_roles/1.json
  def show
    render layout: "console_desks"
  end

  # GET /m_roles/new
  def new
    @m_role = MRole.new
    render layout: "console_desks"
  end

  # GET /m_roles/1/edit
  def edit
    render layout: "console_desks"
  end

  # POST /m_roles
  # POST /m_roles.json
  def create
    @m_role = MRole.new(m_role_params)

    respond_to do |format|
      if @m_role.save
        format.html { redirect_to @m_role, layout: "console_desks", notice: 'M role was successfully created.' }
        format.json { render :show, status: :created, location: @m_role }
      else
        format.html { render :new }
        format.json { render json: @m_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_roles/1
  # PATCH/PUT /m_roles/1.json
  def update
    respond_to do |format|
      if @m_role.update(m_role_params)
        format.html { redirect_to @m_role, layout: "console_desks", notice: 'M role was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_role }
      else
        format.html { render :edit }
        format.json { render json: @m_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_roles/1
  # DELETE /m_roles/1.json
  def destroy
    @m_role.destroy
    respond_to do |format|
      format.html { redirect_to m_roles_url, notice: 'M role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_role
      @m_role = MRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_role_params
      params.require(:m_role).permit(:role_no, :role)
    end
end
