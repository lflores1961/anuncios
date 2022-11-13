class AddsController < ApplicationController
  before_action :set_add, only: %i[show edit update destroy]
  helper_method :sort_column, :sort_direction

  # GET /adds or /adds.json
  def index
    @pagy, @adds = pagy(Add.order(sort_column + " " + sort_direction))
  end

  # GET /adds/1 or /adds/1.json
  def show
  end

  # GET /adds/new
  def new
    @add = Add.new
  end

  # GET /adds/1/edit
  def edit
  end

  # POST /adds or /adds.json
  def create
    @add = Add.new(add_params)

    respond_to do |format|
      if @add.save
        format.html do
          redirect_to adds_url, notice: "Add was successfully created."
        end
        format.json { render :show, status: :created, location: @add }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adds/1 or /adds/1.json
  def update
    respond_to do |format|
      if @add.update(add_params)
        format.html do
          redirect_to add_url(@add), notice: "Add was successfully updated."
        end
        format.json { render :show, status: :ok, location: @add }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adds/1 or /adds/1.json
  def destroy
    @add.destroy

    respond_to do |format|
      format.html do
        redirect_to adds_url, notice: "Add was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_add
    @add = Add.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def add_params
    params.require(:add).permit(:title, :description)
  end

  def sort_column
    "created_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
