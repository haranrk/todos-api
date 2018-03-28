class XyzsController < ApplicationController
  before_action :set_xyz, only: [:show, :update, :destroy]

  # GET /xyzs
  def index
    @xyzs = Xyz.all

    render json: @xyzs
  end

  # GET /xyzs/1
  def show
    render json: @xyz
  end

  # POST /xyzs
  def create
    @xyz = Xyz.new(xyz_params)

    if @xyz.save
      render json: @xyz, status: :created, location: @xyz
    else
      render json: @xyz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /xyzs/1
  def update
    if @xyz.update(xyz_params)
      render json: @xyz
    else
      render json: @xyz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /xyzs/1
  def destroy
    @xyz.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xyz
      @xyz = Xyz.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def xyz_params
      params.require(:xyz).permit(:name)
    end
end
