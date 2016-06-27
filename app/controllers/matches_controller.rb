# class MatchesController < ProtectedController
class MatchesController < ApplicationController

  before_action :set_match, only: [:show, :update, :destroy]
  before_action :authenticate

  # GET /matches
  # GET /matches.json
  def index

     render json: @matches.current_user

  end

  def indexGetMatches
    # laura = 6
    all_matches = Match.all
    # laura = matt.select { |i| i.user_id == 6 }
    signed_in_user_matches = all_matches.select { |i| i.user_id == params[:id].to_i }
    #  render json: @my_matches

    render json: signed_in_user_matches

  end
  # GET /matches/1
  # GET /matches/1.json
  def show
    render json: @match
  end

  # POST /matches
  # POST /matches.json
  def create
    # @match = Match.new(match_params)
    @match = current_user.matches.build(match_params)

    if @match.save
      render json: @match, status: :created, location: @match
    else
      render json: @match.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    # @match = Match.find(params[:id])

    if @match.update(match_params)
      head :no_content
    else
      render json: @match.errors, status: :unprocessable_entity
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy

    if (current_user.matches.any? { |i| i.id == params[:id].to_i })
      @match.destroy
    end
    head :no_content
  end

  private

    def set_match
      @match = Match.find(params[:id])
    end

    def match_params
      params.require(:match).permit(:opponent, :date, :result, :user_id, :venue_id)
    end
end
