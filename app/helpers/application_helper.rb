module ApplicationHelper
  def convert_to_japantime(time)
  t=time.in_time_zone('Tokyo')
  t.strftime("%Y-%m-%d　%H:%M　")
  end
end
