json.( @diagram, :id, :name, :description)

json.items(@diagram.items) do |item|
  json.extract! item, :id, :name, :description, :text
end
