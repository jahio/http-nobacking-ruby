# Test Application with no datastore backing (Ruby)

**PURPOSE**

Provide a simple application you can fire up and serve over http/s to validate that your deployment process, pipeline, environment, or other such system works as desired.

## The only path that matters: /api/v1/status

```
GET /api/v1/status
```

Returns a JSON object with information about the running process, Ruby version, and so on. For diagnostic/validation use.

## Running it

You need:

+ A valid GCC build environment
+ Ruby + Rubygems
+ Bundler


```
cd /path/to/this/app
bundle
bundle exec puma
curl -i http://localhost:9292/api/v1/status
```
