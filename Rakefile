require 'rake'
require 'hanami/rake_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.libs    << 'spec'
  t.warning = false
end

task :seed do
  require 'faker'
  require_relative 'config/environment'
  Hanami.boot

  number = ENV['NUMBER'] || 40
  number.times do
    author = Faker::FunnyName.name
    title = Faker::Fallout.quote
    BookRepository.new.create(author: author, title: title)
  end
end

task default: :test
task spec: :test
