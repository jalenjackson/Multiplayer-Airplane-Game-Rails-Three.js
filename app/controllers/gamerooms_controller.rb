class GameroomsController < ApplicationController

  # GET /gamerooms
  # GET /gamerooms.json
  def index
    @gamerooms = Gameroom.all
  end

  # GET /gamerooms/1
  # GET /gamerooms/1.json
  def show
  end

  # GET /gamerooms/new
  def new
    @gameroom = Gameroom.new
  end

  # GET /gamerooms/1/edit
  def edit
  end

  # POST /gamerooms
  # POST /gamerooms.json
  def create
    @gameroom = Gameroom.new

    if @gameroom.save
      redirect_to @gameroom
    else
      render 'new'
    end
  end

  # PATCH/PUT /gamerooms/1
  # PATCH/PUT /gamerooms/1.json
  def update
    respond_to do |format|
      if @gameroom.update(gameroom_params)
        format.html { redirect_to @gameroom, notice: 'Gameroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @gameroom }
      else
        format.html { render :edit }
        format.json { render json: @gameroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamerooms/1
  # DELETE /gamerooms/1.json
  def destroy
    @gameroom.destroy
    respond_to do |format|
      format.html { redirect_to gamerooms_url, notice: 'Gameroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def gameroom_params
      params.require(:gameroom).permit(:name)
    end
end
