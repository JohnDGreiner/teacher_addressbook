json.array!(@parents) do |parent|
  json.extract! parent, :id, :first_name, :last_name, :email, :notes, :teacher_id
  json.url parent_url(parent, format: :json)
end
