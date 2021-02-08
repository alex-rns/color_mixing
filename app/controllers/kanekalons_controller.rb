class KanekalonsController < ApplicationController
  def index
    @kanekalons = Kanekalon.all
  end
end
