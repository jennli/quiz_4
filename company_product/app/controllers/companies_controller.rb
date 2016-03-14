class CompaniesController < ApplicationController
  def index
    @companies = Company.all.order("id DESC")
    respond_to do |format|

      format.html {render}
      format.json {render json: @companies}
    end
  end

  def update
    @company = Company.find params[:id]
    @company.update company_params
    respond_to do |format|
      format.html {redirect_to company_path}
      format.js {render :success}
      format.json { render json: @company.to_json }
    end

  end

  def company_params
    params.require(:company).permit(:name, :likes)
  end

end
