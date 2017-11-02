@pictures.each do |picture|
  json.set! picture.id do 
    json.extract! picture, :id, :url, :post_id
  end 
end 
