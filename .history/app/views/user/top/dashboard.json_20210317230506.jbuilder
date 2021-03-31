json.array!(@store_members) do |store_member|
  # hash = json.name store_member.name

  json.array!(store_member.tasks) do |task|
    json.name StoreMember.find(task.store_member_id).name
    json.start_time task.start_time.strftime("%F %T")
    json.end_time task.end_time.strftime("%F %T")
    # json.merge! hash
  end
end