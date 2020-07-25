class FortunesController < ApplicationController
  def horoscopes
    all_zodiacs = Zodiac.list
    @zodiac = params.fetch("the_sign").to_sym
    this_zodiac = all_zodiacs.fetch(@zodiac)
    @horoscope = this_zodiac.fetch(:horoscope)

    render({:template => "fortunes_templates/horoscopes.html.erb"})
  end

end