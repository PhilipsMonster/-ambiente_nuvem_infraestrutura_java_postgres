# Create a new Heroku app
resource "heroku_app" "searaembu" {
  name   = "searaembu"
  region = "us"
}

# Create a database, and configure the app to use it
resource "heroku_addon" "database" {
  app_id = heroku_app.searaembu.id
  plan   = "heroku-postgresql:hobby-dev"
}