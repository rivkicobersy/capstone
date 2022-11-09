response = HTTP.get("https://api.edamam.com/api/recipes/v2?type=any&q=chicken&app_id=#{Rails.application.credentials.food_app_id}&app_key=#{Rails.application.credentials.food_app_api}")
data = response.parse
pp data
