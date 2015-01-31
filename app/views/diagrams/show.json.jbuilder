json.( @diagram, :id, :name, :description)

json.items(@diagram.items) do |item|
  json.extract! item, :id, :instruction, :description, :printer, :allocator, :assigned_to
end
