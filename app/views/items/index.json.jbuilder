json.array!(@items) do |item|
  json.extract! item, :id, :instruction, :description, :printer, :allocator, :assigned_to, :diagram
  json.url item_url(item, format: :json)
end
