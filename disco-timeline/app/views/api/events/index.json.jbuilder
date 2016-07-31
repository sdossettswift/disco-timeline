json.events @events do |event|
  json.id event.id
  json.headline event.headline
  json.text event.text
  json.headline event.headline
  json.year event.year
  json.month event.month
  json.day event.day
  json.hour event.hour
  json.minute event.minute
  json.caption event.caption
  json.credit event.credit
  json.url event.url
  json.thumbnail event.thumbnail
  json.url api_event_url(id: event.id)

  json.user do
    json.id event.user.id
    json.username event.user.username
  end
end
