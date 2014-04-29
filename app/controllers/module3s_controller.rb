class Module3sController < ApplicationController
  before_action :autorizar
  before_action :set_module3, only: [:show, :edit, :update, :destroy]

  # GET /module3s
  # GET /module3s.json
  def index
    @module3s = Module3.all
  end

  # GET /module3s/1
  # GET /module3s/1.json
  def show
  end

  # GET /module3s/new
  def new
    @module3 = Module3.new
  end

  # GET /module3s/1/edit
  def edit
  end

  # POST /module3s
  # POST /module3s.json
  def create
    @module3 = Module3.new(module3_params)

    respond_to do |format|
      if @module3.save
        format.html { redirect_to @module3, notice: 'Module3 was successfully created.' }
        format.json { render :show, status: :created, location: @module3 }
      else
        format.html { render :new }
        format.json { render json: @module3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module3s/1
  # PATCH/PUT /module3s/1.json
  def update
    respond_to do |format|
      if @module3.update(module3_params)
        format.html { redirect_to @module3, notice: 'Module3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @module3 }
      else
        format.html { render :edit }
        format.json { render json: @module3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module3s/1
  # DELETE /module3s/1.json
  def destroy
    @module3.destroy
    respond_to do |format|
      format.html { redirect_to module3s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module3
      @module3 = Module3.find(params[:id])
    end
    
    def autorizar
        unless session[:mod3] == true
          redirect_to "/"
        end
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def module3_params
      params.require(:module3).permit(:name)
    end
end
