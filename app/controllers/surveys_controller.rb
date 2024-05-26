class SurveysController < ApplicationController
  def show
    survey = Survey.find(params[:id])
    render json: survey.to_json(include: { questions: { include: :options } })
  end

  def create
    survey = Survey.find(params[:id])
    feedback = Feedback.create!(survey: survey)
    params[:responses].each do |response|
      Response.create!(
        question_id: response[:question_id],
        body: response[:body],
        option_id: response[:option_id],
        feedback: feedback
      )
    end
    render json: feedback, status: :created
  end
end
