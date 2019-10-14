class Api::V1::AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :update, :destroy]

  # GET /answers
  def index
    if logged_in?
      @answers = current_user.answers.all
      render json: AnswerSerializer.new(@answers)
    else
      render json: {
        error: "You must be logged in to see answers"
      }
    end
  end

  # GET /answers/1
  def show
    render json: @answer
  end

  # POST /answers
  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      render json: AnswerSerializer.new(@answer), status: :created
    else
      resp = {
        error: @answer.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /answers/1
  def update
    if @answer.update(answer_params)
      render json: @answer
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /answers/1
  def destroy
    @answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answer_params
      params.require(:answer).permit(:question, :topic, :source_link, :answer_param, :user_id)
    end
end
