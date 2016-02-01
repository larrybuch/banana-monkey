class Api::V1::PostsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    text_message = TextMessage.create!(
      body: params['Body'].strip!,
      phone_number: params['From'],
      data: params.to_json
    )
    TextMessageProcessorJob.peform_later(text_message)

    head :created
  end
end
