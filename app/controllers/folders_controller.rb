class FoldersController < ApplicationController
  before_filter :get_current_todouser
  # GET /folders
  # GET /folders.json
  def index
    @folders = @current_todouser.folders.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @folders }
    end
  end

  # GET /folders/1
  # GET /folders/1.json
  def show
    @folder = @current_todouser.folders.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @folder }
    end
  end

  # GET /folders/new
  # GET /folders/new.json
  def new
    # @folder = Folder.new
    @folder = @current_todouser.folders.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @folder }
    end
  end

  # GET /folders/1/edit
  def edit
    @folder = @current_todouser.folders.find(params[:id])
  end

  # POST /folders
  # POST /folders.json
  def create
    @folder = @current_todouser.folders.build(params[:folder])

    respond_to do |format|
      if @folder.save
        format.html { redirect_to [@current_todouser,:folders], notice: 'Folder was successfully created.' }
        format.json { render json: @folder, status: :created, location: @folder }
      else
        format.html { render action: "new" }
        format.json { render json: @folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /folders/1
  # PUT /folders/1.json
  def update
    @folder = @current_todouser.folders.find(params[:id])

    respond_to do |format|
      if @folder.update_attributes(params[:folder])
        format.html { redirect_to [@current_todouser,@folder], notice: 'Folder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folders/1
  # DELETE /folders/1.json
  def destroy
    @folder = @current_todouser.folders.find(params[:id])
    @folder.destroy

    respond_to do |format|
      format.html { redirect_to [@current_todouser,:folders], notice: 'Folder was successfully deleted.' }
      format.js { render :nothing => true }
      format.json { head :no_content }
    end
  end

  private
  def get_current_todouser
    @current_todouser = current_todouser
  end
end
