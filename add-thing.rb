require 'yaml'
require 'oauth2'
config = YAML.load_file('config.yaml')

client = OAuth2::Client.new(config['client_id'], config['client_secret'], :site => 'https://api.thinkery.me/v1/', :token_url => "token")
token = client.password.get_token(config['username'], config['password'])

response = token.get('thing/add', :params => {'title' => 'thing title', 'tags' => 'foo bar'})
puts response.body
