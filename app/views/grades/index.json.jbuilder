json.array!(@grades) do |grade|
  json.extract! grade, :id, :grade, :user_id, :subject_id
  json.url grade_url(grade, format: :json)
end
