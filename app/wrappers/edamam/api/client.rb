module Edamam
    module Api
        class Client
            def user_repositories(ing)
                connection = Faraday.new(url: "https://api.edamam.com")
                response = connection.get("/api/nutrition-data?app_id=3b9ec5ef&app_key=b06b666cd8a21b7a8b3010592f4695a7&nutrition-type=cooking&ingr=#{ing}")
                JSON.parse(response.body)
            end
        end
    end
end