class Module4sController < ApplicationController
  before_action :autorizar
  before_action :set_module4, only: [:show, :edit, :update, :destroy]

  # GET /module4s
  # GET /module4s.json
  def index
    @module4s = Module4.all
  end

  # GET /module4s/1
  # GET /module4s/1.json
  def show
  end

  # GET /module4s/new
  def new
    @module4 = Module4.new
  end

  # GET /module4s/1/edit
  def edit
  end

  # POST /module4s
  # POST /module4s.json
  def create
    @module4 = Module4.new(module4_params)

    respond_to do |format|
      if @module4.save
        format.html { redirect_to @module4, notice: 'Module4 was successfully created.' }
        format.json { render :show, status: :created, location: @module4 }
      else
        format.html { render :new }
        format.json { render json: @module4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module4s/1
  # PATCH/PUT /module4s/1.json
  def update
    respond_to do |format|
      if @module4.update(module4_params)
        format.html { redirect_to @module4, notice: 'Module4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @module4 }
      else
        format.html { render :edit }
        format.json { render json: @module4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module4s/1
  # DELETE /module4s/1.json
  def destroy
    @module4.destroy
    respond_to do |format|
      format.html { redirect_to module4s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module4
      @module4 = Module4.find(params[:id])
    end

    def autorizar
        unless session[:mod4] == true
          redirect_to "/"
        end
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def module4_params
      params.require(:module4).permit(:name)
    end
end
