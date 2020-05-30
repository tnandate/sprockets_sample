# frozen_string_literal: true

require 'sprockets'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/stylesheets'
  environment.append_path 'assets/javascripts'
  run environment
end

map '/' do
  run Proc.new { |env| [200, { "Content-Type" => "text/html" }, ["Hello world"]] }
end
