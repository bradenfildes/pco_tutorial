require 'pco_api'
require 'httparty'
require 'dotenv/load'

api = PCO::API.new(
  basic_auth_token: ENV['PCO_BASIC_AUTH_TOKEN'],
  basic_auth_secret: ENV['PCO_BASIC_AUTH_SECRET']
)


response = api.people.v2.people[person_id].notes.post(data:{
  type: "Note",
  attributes: {
    note: "Got coffee",
    created_at: "2000-01-01T12:00:00Z",
    note_category_id: "note_category_id"
  }
})