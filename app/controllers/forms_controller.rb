class FormsController < ApplicationController
  def new
    @form = Form.new
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
    params.require(:form).permit(:email, :password, :address, :children)
  end
end
