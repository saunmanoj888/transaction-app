class BeneficiariesController < ApplicationController
  before_action :set_beneficiary, only: [:show, :edit, :update, :destroy]

  # GET /beneficiaries
  # GET /beneficiaries.json
  def index
    @beneficiaries = Beneficiary.all
  end

  # GET /beneficiaries/1
  # GET /beneficiaries/1.json
  def show
  end

  # GET /beneficiaries/new
  def new
    @beneficiary = Beneficiary.new
  end

  # GET /beneficiaries/1/edit
  def edit
  end

  # POST /beneficiaries
  # POST /beneficiaries.json
  def create
    @beneficiary = Beneficiary.new(beneficiary_params)
    @beneficiary.user_id = current_user.id

    respond_to do |format|
      if @beneficiary.save
        format.html { redirect_to @beneficiary, notice: 'Beneficiary was successfully created.' }
        format.json { render :show, status: :created, location: @beneficiary }
      else
        format.html { render :new }
        format.json { render json: @beneficiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beneficiaries/1
  # PATCH/PUT /beneficiaries/1.json
  def update
    @beneficiary.user_id = current_user.id
    respond_to do |format|
      if @beneficiary.update(beneficiary_params)
        format.html { redirect_to @beneficiary, notice: 'Beneficiary was successfully updated.' }
        format.json { render :show, status: :ok, location: @beneficiary }
      else
        format.html { render :edit }
        format.json { render json: @beneficiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiaries/1
  # DELETE /beneficiaries/1.json
  def destroy
    @beneficiary.destroy
    respond_to do |format|
      format.html { redirect_to beneficiaries_url, notice: 'Beneficiary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficiary
      @beneficiary = Beneficiary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beneficiary_params
      params.require(:beneficiary).permit(:account_number, :nick_name, :ifsc_code, :user_id)
    end
end
