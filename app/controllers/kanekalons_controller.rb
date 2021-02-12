class KanekalonsController < ApplicationController
  def index
    # searching with autocomplete
    @kanekalons = Kanekalon.order(:color_name).where('color_name ilike ?', "%#{params[:term]}%")
    respond_to do |format|
      format.html
      format.json { render json: @kanekalons.map(&:color_name) }
    end
  end

  def show
    @kanekalon = Kanekalon.find(params[:id])
    @single_page_result = case params[:manufacture]
                          when 'Kami'
                            @kanekalon.kami
                          when 'Jumbo'
                            @kanekalon.jumbo_braids
                          when 'Aida'
                            @kanekalon.aida
                          else
                            @kanekalon.default_mix
                          end
  end

  def search
    @kanekalons = Kanekalon.where('color_name ILIKE ? OR hex ILIKE ?', "%#{params[:query]}%", "%#{params[:query]}%")
    render 'kanekalons/index'
  end
end
