require 'rack'
require 'rack/server'
require 'rack/directory'
require 'rake/clean'

COFFEESCRIPTS = FileList['src/*.coffee']
JAVASCRIPTS = COFFEESCRIPTS.ext('js')
CLEAN.include(JAVASCRIPTS)

task :default => :build

desc "Build scripts"
task :build => JAVASCRIPTS

rule '.js' => '.coffee' do |t|
  sh "coffee -b -c #{t.source}"
end

namespace :server do
  desc "Start local server with Plack"
  task :start do
    server = Rack::Server.new
    server.instance_variable_set(:@app, Rack::Directory.new(Dir.pwd))
    server.start
  end
end
