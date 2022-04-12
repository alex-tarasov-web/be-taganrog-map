class DiscoveryVideosController < ApplicationController
  before_action :set_discovery_video, only: %i[ show update destroy ]

  # GET /discovery_videos
  def index
    @discovery_videos = DiscoveryVideo.all

    render json: @discovery_videos.first
  end

  # GET /discovery_videos/1
  def show
    render json: @discovery_video
  end

  # POST /discovery_videos
  def create
    @discovery_video = DiscoveryVideo.new(discovery_video_params)

    if @discovery_video.save
      render json: @discovery_video, status: :created, location: @discovery_video
    else
      render json: @discovery_video.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /discovery_videos/1
  def update
    if @discovery_video.update(discovery_video_params)
      render json: @discovery_video
    else
      render json: @discovery_video.errors, status: :unprocessable_entity
    end
  end

  # DELETE /discovery_videos/1
  def destroy
    @discovery_video.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discovery_video
      @discovery_video = DiscoveryVideo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discovery_video_params
      params.fetch(:discovery_video, {})
    end
end
