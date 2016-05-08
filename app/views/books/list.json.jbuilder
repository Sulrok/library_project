json.array!(@books) do |book|
  json.extract! book, :id, :bookID, :title, :isbn, :description, :author, :isAvailable
  json.url book_url(book, format: :json)
end
