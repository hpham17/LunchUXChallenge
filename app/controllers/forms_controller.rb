class FormsController < ApplicationController
  def new
    @form = Form.new
    5.times do
      @form.adults.build
      @form.children.build
    end
  end
  def create
    @form = Form.new(form_parameters)
    if @form.save
      flash[:info] = "Saved"
      redirect_to root_path
    else
      flash[:danger] = "Not saved"
      render 'new'
    end
  end

  private
  def form_parameters
    params.require(:form).permit(:total_household_members, :ssn, :signature, :child_income, :child_income_times, :ethinicity, :race, :case_number, :daytime_phone, :agrees, :address, adults_attributes: [:name], children_attributes: [:name])
  end
end
