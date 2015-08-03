json.array!(@imagefiles) do |imagefile|
  json.extract! imagefile, :id
  json.url imagefile_url(imagefile, format: :json)
end
