json.array!(@store_members) do |store_member|
  json.array!(store_member.tasks) do |task|

    json.start task.start_time.strftime("%F %T")
    json.end task.end_time.strftime("%F %T")
  end
end