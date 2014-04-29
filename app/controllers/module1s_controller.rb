class Module1sController < ApplicationController
  before_action :autorizar
  before_action :set_module1, only: [:show, :edit, :update, :destroy]

  # GET /module1s
  # GET /module1s.json
  def index
    @module1s = Module1.all
  end

  # GET /module1s/1
  # GET /module1s/1.json
  def show
  end

  # GET /module1s/new
  def new
    @module1 = Module1.new
  end

  # GET /module1s/1/edit
  def edit
  end

  # POST /module1s
  # POST /module1s.json
  def create
    @module1 = Module1.new(module1_params)

    respond_to do |format|
      if @module1.save
        format.html { redirect_to @module1, notice: 'Module1 was successfully created.' }
        format.json { render :show, status: :created, location: @module1 }
      else
        format.html { render :new }
        format.json { render json: @module1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module1s/1
  # PATCH/PUT /module1s/1.json
  def update
    respond_to do |format|
      if @module1.update(module1_params)
        format.html { redirect_to @module1, notice: 'Module1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @module1 }
      else
        format.html { render :edit }
        format.json { render json: @module1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module1s/1
  # DELETE /module1s/1.json
  def destroy
    @module1.destroy
    respond_to do |format|
      format.html { redirect_to module1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module1
      @module1 = Module1.find(params[:id])
    end

    def autorizar
        unless session[:mod1] == true
          redirect_to "/"
        end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def module1_params
      params.require(:module1).permit(:name)
    end
end
