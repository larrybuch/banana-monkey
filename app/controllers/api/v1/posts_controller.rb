class Api::V1::PostsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    message = TextMessage.create!(
      body: params['Body'],
      phone_number: params['From'],
      data: params.to_json
    )
    head :created
  end
end
