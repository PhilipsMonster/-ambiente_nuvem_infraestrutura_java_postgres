resource "heroku_app" "searaembu" {
  name   = "searaembu"
  region = "us"
}

resource "heroku_addon" "database" {
  app_id = heroku_app.searaembu.id
  plan   = "heroku-postgresql:hobby-dev"
}