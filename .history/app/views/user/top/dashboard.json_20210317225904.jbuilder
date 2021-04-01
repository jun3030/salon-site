json.array!(@store_members) do |store_member|
  hash = json.name store_member.name

  json.array!(store_member.tasks) do |task|
    json.start_time task.start_time
    json.end_time task.end_time
    json.merge! hash
  end
end