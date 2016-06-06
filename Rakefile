require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:leads) do |t|
    t.cucumber_opts = "--format pretty --tags @leads --format json -o reports/salesforce_features.json"
end

Cucumber::Rake::Task.new(:products) do |t|
    t.cucumber_opts = "--format pretty --tags @products --format json -o reports/salesforce_features.json"
end

Cucumber::Rake::Task.new(:all) do |t|
    t.cucumber_opts = "--format pretty --format json -o reports/salesforce_features.json"
end

task :scenarios_with_tags do
    tags = ENV['TAGS']
    Cucumber::Rake::Task.new(:run) do |t|
        t.cucumber_opts = "--format pretty --tags #{tags} --format json -o reports/salesforce_features.json"
    end
    Rake::Task[:run].invoke()
end