class MainmenusController < ApplicationController
  before_action :set_mainmenu,         only: [:show, :edit, :update, :destroy]
  before_action :authenticate_member!, only: [:index, :show, :edit, :update, :destroy]
  # load_and_authorize_resource

  def mainpage
    @mainmenu = Mainmenu.dis_flg_1.first
  end

  # GET /mainmenus
  # GET /mainmenus.json
  def index
    puts current_member
    @mainmenus = Mainmenu.all

    respond_to do |format|
      format.html { render :layout => "console_desks" }
    end
    
  end

  # GET /mainmenus/1
  # GET /mainmenus/1.json
  def show
  end

  # GET /mainmenus/new
  def new
    @mainmenu = Mainmenu.new
  end

  # GET /mainmenus/1/edit
  def edit
  end

  # POST /mainmenus
  # POST /mainmenus.json
  def create
    @mainmenu = Mainmenu.new(mainmenu_params)

    #upload file save
    @mainmenu.avatar = params[:file]

    # u.avatar.url # => '/url/to/file.png'
    # u.avatar.current_path # => 'path/to/file.png'
    # u.avatar_identifier # => 'file.png'
    # @mainmenu.avatar = mainmenu_params[:avatar]

    respond_to do |format|
      if @mainmenu.save
        format.html { redirect_to @mainmenu, notice: 'Mainmenu was successfully created.' }
        format.json { render :show, status: :created, location: @mainmenu }
      else
        format.html { render :new }
        format.json { render json: @mainmenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainmenus/1
  # PATCH/PUT /mainmenus/1.json
  def update
    respond_to do |format|
      if @mainmenu.update(mainmenu_params)
        format.html { redirect_to @mainmenu, notice: 'Mainmenu was successfully updated.' }
        format.json { render :show, status: :ok, location: @mainmenu }
      else
        format.html { render :edit }
        format.json { render json: @mainmenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainmenus/1
  # DELETE /mainmenus/1.json
  def destroy
    @mainmenu.destroy
    respond_to do |format|
      format.html { redirect_to mainmenus_url, notice: 'Mainmenu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainmenu
      @mainmenu = Mainmenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mainmenu_params
      params.require(:mainmenu).permit(:content, :avatar, :dis_flg)
    end

    # def upload(file)
    #   uploader = AvatarUploader.new

    #   uploader.store!(my_file)

    #   uploader.retrieve_from_store!('my_file.png')
    # end
      
end
