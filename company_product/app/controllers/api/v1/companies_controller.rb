class Api::V1::CompaniesController < ApplicationController

  def index
    @companies = Company.all
    render json: @companies, only: [:name, :products]
  end
end
