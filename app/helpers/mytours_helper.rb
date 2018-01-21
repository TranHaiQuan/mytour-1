module MytoursHelper
  def number_to_vnd number
     number_to_currency number, local: :en
  end
end
