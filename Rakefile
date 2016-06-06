require 'cucumber/rake/task'

task :features_with_tags do
    tags = ENV['TAGS']
    Cucumber::Rake::Task.new(:run) do |t|
        t.cucumber_opts = "--format pretty --tags @#{tags}"
    end
    Rake::Task[:run].invoke()
end