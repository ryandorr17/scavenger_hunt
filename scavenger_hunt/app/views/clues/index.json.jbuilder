json.array!(@clues) do |clue|
  json.extract! clue, :id, :stop, :location, :time, :clue, :answer
  json.url clue_url(clue, format: :json)
end
