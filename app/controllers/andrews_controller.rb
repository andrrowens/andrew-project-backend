class AndrewsController < ApplicationController
  before_action :set_andrew, only: [:show, :update, :destroy]

  # GET /andrews
  def index
    @andrews = Andrew.all

    render json: @andrews
  end

  # GET /andrews/1
  def show
    render json: @andrew
  end

  # POST /andrews
  def create
    @andrew = Andrew.new(andrew_params)

    if @andrew.save
      render json: @andrew, status: :created, location: @andrew
    else
      render json: @andrew.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /andrews/1
  def update
    if @andrew.update(andrew_params)
      render json: @andrew
    else
      render json: @andrew.errors, status: :unprocessable_entity
    end
  end

  # DELETE /andrews/1
  def destroy
    @andrew.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_andrew
      @andrew = Andrew.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def andrew_params
      params.require(:andrew).permit(:name, :background, :description)
    end
end
