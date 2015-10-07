class DefinitionsController < ApplicationController
  before_action :ensure_logged_in
  before_action :set_definition, only: [:show, :edit, :update, :destroy]

  # GET /definitions
  # GET /definitions.json
  def index
    @last_time = session[:user_id]

    # session[:time] = Time.now.to_s

    @definitions = Definition.all
  end

  def search
    @search = params[:search]
    @definitions= Definition.where("word LIKE ?", "%#{@search}%")

    render :index
  end
  # GET /definitions/1
  # GET /definitions/1.json
  def show
    @definitions = Definition.find(params[:id])
  end

  # GET /definitions/new
  def new
    @definition = Definition.new
  end

  # GET /definitions/1/edit
  def edit
  @definitions = Definition.find(params[:id])
  end

  # PoST /definitions
  # POST /definitions.json
  def create
    @definition = Definition.new(definition_params)

    respond_to do |format|
      if @definition.save
        format.html { redirect_to @definition, notice: 'Definition was successfully created.' }
        format.json { render :show, status: :created, location: @definition }
      else
        format.html { render :new }
        format.json { render json: @definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /definitions/1
  # PATCH/PUT /definitions/1.json
  def update
    respond_to do |format|
      if @definition.update(definition_params)
        format.html { redirect_to @definition, notice: 'Definition was successfully updated.' }
        format.json { render :show, status: :ok, location: @definition }
      else
        format.html { render :edit }
        format.json { render json: @definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /definitions/1
  # DELETE /definitions/1.json
  def destroy
    @definition.destroy
    respond_to do |format|
    format.html { redirect_to definitions_url, notice: 'Definition was successfully destroyed.' }
    format.json { head :no_content }
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions
  def set_definition
    @definition = Definition.find(params[:id])
  end

  def definition_params
    params.require(:definition).permit(:word, :meaning, :word_type, :sentence ,:search)
  end

  def ensure_logged_in
    if current_user.nil?
      redirect_to new_session_path
      return false
    end
  end
end
