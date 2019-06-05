json.extract! card, :id, :question, :answer, :citation_title, :citation_url, :created_at, :updated_at
json.url card_url(card, format: :json)
