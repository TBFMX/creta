class Module5sController < ApplicationController
  before_action :autorizar
  before_action :set_module5, only: [:show, :edit, :update, :destroy]

  # GET /module5s
  # GET /module5s.json
  def index
    @module5s = Module5.all
  end

  # GET /module5s/1
  # GET /module5s/1.json
  def show
  end

  # GET /module5s/new
  def new
    @module5 = Module5.new
  end

  # GET /module5s/1/edit
  def edit
  end

  # POST /module5s
  # POST /module5s.json
  def create
    @module5 = Module5.new(module5_params)

    respond_to do |format|
      if @module5.save
        format.html { redirect_to @module5, notice: 'Module5 was successfully created.' }
        format.json { render :show, status: :created, location: @module5 }
      else
        format.html { render :new }
        format.json { render json: @module5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module5s/1
  # PATCH/PUT /module5s/1.json
  def update
    respond_to do |format|
      if @module5.update(module5_params)
        format.html { redirect_to @module5, notice: 'Module5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @module5 }
      else
        format.html { render :edit }
        format.json { render json: @module5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module5s/1
  # DELETE /module5s/1.json
  def destroy
    @module5.destroy
    respond_to do |format|
      format.html { redirect_to module5s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module5
      @module5 = Module5.find(params[:id])
    end

    def autorizar
        unless session[:mod5] == true
          redirect_to "/"
        end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def module5_params
      params.require(:module5).permit(:name)
    end
end
