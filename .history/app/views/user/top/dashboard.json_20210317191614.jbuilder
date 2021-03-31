json.array!(@store_members) do |store_member|
  json.name api["store_member"]["name"] + "様 :" + api["task_course"]["title"]
end