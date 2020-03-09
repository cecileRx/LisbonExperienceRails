class LeaksController < ApplicationController
  before_action :set_leak, only: [:show, :edit, :update, :destroy]

  # GET /leaks
  # GET /leaks.json
  def index
    @leaks = Leak.all
  end

  def colored?
    @leak.color == '#f45f53'
  end

  # GET /leaks/1
  # GET /leaks/1.json
  def show
  end

  # GET /leaks/new
  def new
    @leak = Leak.new
  end

  # GET /leaks/1/edit
  def edit
  end

  # POST /leaks
  # POST /leaks.json
  def create
    @leak = Leak.new(leak_params)

    respond_to do |format|
      if @leak.save
        format.html { redirect_to @leak, notice: 'Leak was successfully created.' }
        format.json { render :show, status: :created, location: @leak }
      else
        format.html { render :new }
        format.json { render json: @leak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaks/1
  # PATCH/PUT /leaks/1.json
  def update
    respond_to do |format|
      if @leak.update(leak_params)
        format.html { redirect_to @leak, notice: 'Leak was successfully updated.' }
        format.json { render :show, status: :ok, location: @leak }
      else
        format.html { render :edit }
        format.json { render json: @leak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaks/1
  # DELETE /leaks/1.json
  def destroy
    @leak.destroy
    respond_to do |format|
      format.html { redirect_to leaks_url, notice: 'Leak was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leak
      @leak = Leak.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leak_params
      params.require(:leak).permit(:title, :description)
    end
end
