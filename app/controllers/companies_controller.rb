class CompaniesController < ApplicationController
  def new
    @company = Company.new
    @company.users.build
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:notice] = "User signed up Successfully"
    else
      puts @company.errors.messages
    end
  end


  private

  def company_params
    params.require(:company).permit( :name, :landline, users_attributes: [User.attribute_names, :password] )
  end
end
