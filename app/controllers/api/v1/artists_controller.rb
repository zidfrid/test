class Api::V1::ArtistsController < ApplicationController
  # GET /api/v1/artists
  def index
    @artists = Artist.order(:popularity)
    # if !params[:search].nil? && params[:search].present?
    #   @posts = PostsSearchService.search(@posts, params[:search])
    # end
    render json: @artists, status: :ok
  end
end
