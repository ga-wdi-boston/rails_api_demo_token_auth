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

## Testing with Curl

If you want to test API requests using just the terminal you could use curl.

#### GET example:

```
curl http://localhost:3000/api/v1/users
```

#### GET example using token:
This an example of how you would access resources you want to protect:

```
curl -H "Authorization: Token token=my_first_user_token" http://localhost:3000/api/v1/users
```

#### POST example:

```
curl -d "user[name]=john&user[password]=mysecurepassword&user[password_confirmation]=mysecurepassword&user[email]=john@doe.com" -X POST localhost:3000/api/v1/users
```

In *POST example* example we are assuming that the model has *name*, *password_digest*, *token*, and *email* fields. The *password_digest* field was added according to [bcrypt](https://github.com/codahale/bcrypt-ruby) gem's usage, but encryption is not implemented yet for you.



## Acknowledgements

Code *very heavily* borrowed and inspired by [TangoSource's repo](https://github.com/tangosource/rails-api-token-authentication)
