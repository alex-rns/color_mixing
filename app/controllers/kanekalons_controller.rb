class KanekalonsController < ApplicationController
  def index
    @kanekalons = Kanekalon.all
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
end
