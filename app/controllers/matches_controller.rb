class MatchesController < ProtectedController
  before_action :set_match, only: [:show, :update, :destroy]

  # GET /matches
  # GET /matches.json
  def index
    # @matches = Match.all
    # render json: @matches
    render json: current_user.matches

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
    @match.destroy

    head :no_content
  end

  private

    def set_match
      @match = Match.find(params[:id])
    end

    def match_params
      params.require(:match).permit(:opponent, :date, :result, :user_id)
    end
end
