json.array! @pictures do |picture|
  json.extract! picture, :id, :url, :post_id
end 
