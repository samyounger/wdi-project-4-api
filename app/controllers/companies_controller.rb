class CompaniesController < ApplicationController
  before_action :set_user

  def searchname
    @searchName = params[:input]
    response = HTTParty.get('http://dev.markitondemand.com/MODApis/Api/v2/Lookup/json?count=3&input=' + @searchName)
    render json: response.parsed_response
  end

  def getdetails
    @companyEpic = params[:q]
    response = HTTParty.get('http://finance.google.com/finance/info?client=ig&q=' + @companyEpic)
    response.sub! '// ', ''
    render json: response.parsed_response
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
end
