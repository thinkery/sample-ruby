sample-ruby
===========

How to access the thinkery API using Ruby.

Our sample program can be used to add a thing:

```
$ ruby -rubygems add-thing.rb
{"_id":"31293a4c1cb602d812621129","title":"test thing","date":1359560000,"tags":["foo","bar"]}
```
(the response is the raw output from the api, which shows the thing that has been added successfully)

Requirements
------------

To use the API, you must create your API keys at https://thinkery.me/api/apps/

Also the [oauth2](https://github.com/intridea/oauth2) library is being used. You can install it like this:
```
gem install oauth2
```
