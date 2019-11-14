module CocktailsHelper
  IMAGES = %w[
    old-fashioned
    bloody-mary
    margarita
    mojito
    moscow-mule
    negroni
  ]

  def picturize(index)
    "#{IMAGES[index]}.jpeg"
  end
end
