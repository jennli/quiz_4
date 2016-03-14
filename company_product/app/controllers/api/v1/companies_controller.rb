class Api::V1::CompaniesController < ApplicationController

  def index
    @companies = Company.all
    # render json: @companies.to_json(only: [:name])
  end
end
