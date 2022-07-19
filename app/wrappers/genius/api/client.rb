module Genius
    module Api
        class Client
            BASE_URL = "https://genius.p.rapidapi.com".freeze
            def genius_search(keyword)
                connection = Faraday.new(
                    url: BASE_URL,
                    params: {q: keyword},
                    headers: {"X-RapidAPI-Key" => "fb57e658dfmsh06b6edc74dbf0b3p145da8jsnd93377bcacbd", "X-RapidAPI-Host" => "genius.p.rapidapi.com"})
                response = connection.get("/search")
                JSON.parse(response.body)
            end

            
        end
    end
end