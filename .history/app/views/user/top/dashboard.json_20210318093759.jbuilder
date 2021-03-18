json.array!(@store_members) do |store_member|
  json.array!(store_member.tasks) do |task|
    json.title StoreMember.find(task.store_member_id).name
    json.start task.start_time.strftime("%F %T")
    json.end task.end_time.strftime("%F %T")
  end
end