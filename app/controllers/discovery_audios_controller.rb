class DiscoveryAudiosController < ApplicationController
  before_action :set_discovery_audio, only: %i[ show update destroy ]

  # GET /discovery_audios
  def index
    @discovery_audios = DiscoveryAudio.all

    render json: @discovery_audios.first
  end

  # GET /discovery_audios/1
  def show
    render json: @discovery_audio
  end

  # POST /discovery_audios
  def create
    @discovery_audio = DiscoveryAudio.new(discovery_audio_params)

    if @discovery_audio.save
      render json: @discovery_audio, status: :created, location: @discovery_audio
    else
      render json: @discovery_audio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /discovery_audios/1
  def update
    if @discovery_audio.update(discovery_audio_params)
      render json: @discovery_audio
    else
      render json: @discovery_audio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /discovery_audios/1
  def destroy
    @discovery_audio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discovery_audio
      @discovery_audio = DiscoveryAudio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discovery_audio_params
      params.fetch(:discovery_audio, {})
    end
end
