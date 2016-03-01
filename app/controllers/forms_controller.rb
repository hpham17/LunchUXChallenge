class FormsController < ApplicationController
  def index
    @forms = Form.all
    respond_to do |format|
      format.html
      format.csv { send_data FormCsv.to_csv @forms }
    end
  end
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
      flash[:danger] = "There was an error submitting your application. Please fix it and try again."
      render 'new'
    end
  end

  private
  def form_parameters
    params.require(:form).permit!
  end
end
