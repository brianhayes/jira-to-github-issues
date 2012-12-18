require 'rubygems'
require 'FasterCSV'
require 'httparty'
require 'json'
require 'highline/import'

def get_input(prompt="Enter >",show = true)
     ask(prompt) {|q| q.echo = show}
end

class GitHub
  include HTTParty
  base_uri 'https://api.github.com'
 
end
user = get_input("Enter Username >")
password = get_input("Enter Password >", "*")
GitHub.basic_auth user, password
 
FasterCSV.open ARGV.shift, :headers => true do |csv|
  csv.each do |r|
    body = {
      :title => r['Summary'],
      :body => r['Description'],
    }
    
    body[:labels] = [ r['Labels'] ] if r['Labels'] != ''
    issue = GitHub.post '/repos/ORG/REPO/issues', :body => JSON.generate(body)
    p issue
 
  end
end
