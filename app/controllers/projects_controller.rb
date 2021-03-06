class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
    @artist = Artist.find_by_id(params[:artist])
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find_by_id(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @artist = Artist.find_by_id(params[:artist])
    @project = Project.new(project_params)
    @project.artist = @artist
    @project.release = params[:project][:release].gsub("/", "-")
    @project.status = false
    @project.delivered = false
    respond_to do |format|
      if @project.save
        format.html { redirect_to @artist, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @project = Project.find_by_id(params[:id])
    @artist = @project.artist
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @artist, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :release, :info, :amount, :status, :delivered,:label)
    end
end
