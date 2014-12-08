json.array!(@cars) do |car|
  json.extract! car, :id, :title, :make, :model, :year_info, :color, :fueltype, :hp, :image, :price, :stock
  json.url car_url(car, format: :json)
end
