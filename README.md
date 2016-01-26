# banana-monkey
you know it

## setup

#### prereqs

- ruby 2.3.0
- postgresql

Once the prereqs are installed, do the following:

1. Install bundler and foreman gems

  ```
  gem install bundler foreman
  ```

2. Install the gems in the Gemfile using bundler

  ```
  bundle install
  ```

3. Create a `.env` file to store sensitive environment variables

  ```
  touch .env
  ```

4. Set the twilio key inside the `.env` file

  ```
  TWILIO_SID=123
  TWILIO_TOKEN=456
  ```

5. Setup your local database

  ```
  rake db:setup
  ```

6. Run the app

  ```
  foreman start
  ```

7. Profit $$$
