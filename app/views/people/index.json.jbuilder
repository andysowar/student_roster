json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :email, :cell_phone, :home_phone, :work_phone
  json.url person_url(person, format: :json)
end
