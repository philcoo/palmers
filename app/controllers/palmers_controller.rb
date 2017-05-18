class PalmersController < ApplicationController
  before_action :set_palmer, only: [:show, :edit, :update, :destroy]

  # GET /palmers
  # GET /palmers.json
  def index
    @palmers = Palmer.all
  end

  # GET /palmers/1
  # GET /palmers/1.json
  def show
  end

  # GET /palmers/new
  def new
    @palmer = Palmer.new
  end

  # GET /palmers/1/edit
  def edit
  end

  # POST /palmers
  # POST /palmers.json
  def create
    @palmer = Palmer.new(palmer_params)

    respond_to do |format|
      if @palmer.save
        format.html { redirect_to @palmer, notice: 'Palmer was successfully created.' }
        format.json { render :show, status: :created, location: @palmer }
      else
        format.html { render :new }
        format.json { render json: @palmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palmers/1
  # PATCH/PUT /palmers/1.json
  def update
    respond_to do |format|
      if @palmer.update(palmer_params)
        format.html { redirect_to @palmer, notice: 'Palmer was successfully updated.' }
        format.json { render :show, status: :ok, location: @palmer }
      else
        format.html { render :edit }
        format.json { render json: @palmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palmers/1
  # DELETE /palmers/1.json
  def destroy
    @palmer.destroy
    respond_to do |format|
      format.html { redirect_to palmers_url, notice: 'Palmer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palmer
      @palmer = Palmer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palmer_params
      params.require(:palmer).permit(:name)
    end
end
