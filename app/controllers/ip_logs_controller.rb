class IpLogsController < ApplicationController
  before_action :set_ip_log, only: [:show, :edit, :update, :destroy]

  # GET /ip_logs
  # GET /ip_logs.json
  def index
    @ip_logs = IpLog.all
  end

  # GET /ip_logs/1
  # GET /ip_logs/1.json
  def show
  end

  # GET /ip_logs/new
  def new
    res = Net::HTTP.start('ipinfo.io') do |http|
      http.get "/ip"
    end
    @ip_log = IpLog.new(ip_address: res.body.chomp)
  end

  # GET /ip_logs/1/edit
  def edit
  end

  # POST /ip_logs
  # POST /ip_logs.json
  def create
    @ip_log = IpLog.new(ip_log_params)

    respond_to do |format|
      if @ip_log.save
        format.html { redirect_to @ip_log, notice: 'Ip log was successfully created.' }
        format.json { render :show, status: :created, location: @ip_log }
      else
        format.html { render :new }
        format.json { render json: @ip_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ip_logs/1
  # PATCH/PUT /ip_logs/1.json
  def update
    respond_to do |format|
      if @ip_log.update(ip_log_params)
        format.html { redirect_to @ip_log, notice: 'Ip log was successfully updated.' }
        format.json { render :show, status: :ok, location: @ip_log }
      else
        format.html { render :edit }
        format.json { render json: @ip_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ip_logs/1
  # DELETE /ip_logs/1.json
  def destroy
    @ip_log.destroy
    respond_to do |format|
      format.html { redirect_to ip_logs_url, notice: 'Ip log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip_log
      @ip_log = IpLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ip_log_params
      params.require(:ip_log).permit(:ip_address)
    end
end
