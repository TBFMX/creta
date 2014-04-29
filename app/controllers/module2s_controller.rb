class Module2sController < ApplicationController
  before_action :autorizar
  before_action :set_module2, only: [:show, :edit, :update, :destroy]

  # GET /module2s
  # GET /module2s.json
  def index
    @module2s = Module2.all
  end

  # GET /module2s/1
  # GET /module2s/1.json
  def show
  end

  # GET /module2s/new
  def new
    @module2 = Module2.new
  end

  # GET /module2s/1/edit
  def edit
  end

  # POST /module2s
  # POST /module2s.json
  def create
    @module2 = Module2.new(module2_params)

    respond_to do |format|
      if @module2.save
        format.html { redirect_to @module2, notice: 'Module2 was successfully created.' }
        format.json { render :show, status: :created, location: @module2 }
      else
        format.html { render :new }
        format.json { render json: @module2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module2s/1
  # PATCH/PUT /module2s/1.json
  def update
    respond_to do |format|
      if @module2.update(module2_params)
        format.html { redirect_to @module2, notice: 'Module2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @module2 }
      else
        format.html { render :edit }
        format.json { render json: @module2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module2s/1
  # DELETE /module2s/1.json
  def destroy
    @module2.destroy
    respond_to do |format|
      format.html { redirect_to module2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module2
      @module2 = Module2.find(params[:id])
    end

    def autorizar
        unless session[:mod2] == true
          redirect_to "/"
        end
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def module2_params
      params.require(:module2).permit(:name)
    end
end
