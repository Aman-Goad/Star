class LoginFormsController < ApplicationController
  before_action :set_login_form, only: %i[ show edit update destroy ]

  # GET /login_forms or /login_forms.json
  def index
    @login_forms = LoginForm.all
  end

  # GET /login_forms/1 or /login_forms/1.json
  def show
  end

  # GET /login_forms/new
  def new
    @login_form = LoginForm.new
  end

  # GET /login_forms/1/edit
  def edit
  end

  # POST /login_forms or /login_forms.json
  def create
    @login_form = LoginForm.new(login_form_params)

    respond_to do |format|
      if @login_form.save
        format.html { redirect_to login_form_url(@login_form), notice: "Login form was successfully created." }
        format.json { render :show, status: :created, location: @login_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @login_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /login_forms/1 or /login_forms/1.json
  def update
    respond_to do |format|
      if @login_form.update(login_form_params)
        format.html { redirect_to login_form_url(@login_form), notice: "Login form was successfully updated." }
        format.json { render :show, status: :ok, location: @login_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @login_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_forms/1 or /login_forms/1.json
  def destroy
    @login_form.destroy

    respond_to do |format|
      format.html { redirect_to login_forms_url, notice: "Login form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_form
      @login_form = LoginForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def login_form_params
      params.require(:login_form).permit(:User_Name, :Password, :Class)
    end
end
