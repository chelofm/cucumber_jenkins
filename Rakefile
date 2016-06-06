require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:leads) do |t|
    t.cucumber_opts = "--format pretty --tags @leads"
end

Cucumber::Rake::Task.new(:products) do |t|
    t.cucumber_opts = "--format pretty --tags @products"
end

Cucumber::Rake::Task.new(:all) do |t|
    t.cucumber_opts = "--format pretty"
end

task :scenarios_with_tags do
    tags = ENV['TAGS']
    Cucumber::Rake::Task.new(:run) do |t|
        t.cucumber_opts = "--format pretty --tags #{tags} --format json -o reports/salesforce_features.json"
    end
    Rake::Task[:run].invoke()
end