class SinglesController < ApplicationController
  before_action :set_single, only: %i[ show update destroy ]

  # GET /singles
  def index
    @singles = Single.first

    render json: @singles.medium
  end

  # GET /singles/1
  def show
    render json: @single
  end

  # POST /singles
  def create
    @single = Single.new(single_params)

    if @single.save
      render json: @single, status: :created, location: @single
    else
      render json: @single.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /singles/1
  def update
    if @single.update(single_params)
      render json: @single
    else
      render json: @single.errors, status: :unprocessable_entity
    end
  end

  # DELETE /singles/1
  def destroy
    @single.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_single
      @single = Single.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def single_params
      params.fetch(:single, {})
    end
end
