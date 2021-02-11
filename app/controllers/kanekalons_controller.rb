class KanekalonsController < ApplicationController

  def index
    @kanekalons = Kanekalon.all

  end

  def mixing
    @kanekalons = Kanekalon.all
    @result = if params[:color_name] == "Red"
                result_color(params[:color_name])
                if params[:manufacture] == "Kami"
                  "600 90% + 300 10%"
                elsif params[:manufacture] == "Jumbo"
                  "Jumbo"
                else
                  "Красный + Белый для осветления, жёлтый, чтобы получить оранжево-красный"
                end
              elsif params[:color_name] == "Green"
                result_color(params[:color_name])
                if params[:manufacture] == "Kami"
                  "300 90% + 300 10%"
                elsif params[:manufacture] == "Jumbo"
                  "Jumbo"
                else
                  'Жёлтый + добавить синий и зелёный'
                end
              end
  end

  private

  def result_color(color)
    @result_color = Kanekalon.where(color_name: color).take
  end
end
