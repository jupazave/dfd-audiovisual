json.array!(@diagrams) do |diagram|
  json.extract! diagram, :id, :name, :description
  json.url diagram_url(diagram, format: :json)

end
