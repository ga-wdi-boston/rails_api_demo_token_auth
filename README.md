# Rails Token Auth Example

This will establish an API for user [token authenication](http://stackoverflow.com/questions/1592534/what-is-token-based-authentication) via JSON. This is significantly different than *cookie* authentication and is the preferred solution. You will have to write the JavaScript end yourself.

## Endpoints

```ruby
Verb URI Pattern                 Controller#Action       Description
GET  /api/v1/users               api/v1/users#index      Returns JSON of all users
POST /api/v1/users               api/v1/users#create
GET  /api/v1/users/:id           api/v1/users#show
```

## Warning

The user's password is not encrypted here. You'll need to do that yourself with [BCrypt](https://github.com/codahale/bcrypt-ruby). Not encrypting a password is dangerous.

## Acknowledgements

Code *very heavily* borrowed and inspired by [TangoSource's repo](https://github.com/tangosource/rails-api-token-authentication)
