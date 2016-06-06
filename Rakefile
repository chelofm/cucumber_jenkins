require 'cucumber/rake/task'

task :features_with_tags do
    tags = ENV['TAGS']
    Cucumber::Rake::Task.new(:run) do |t|
        t.cucumber_opts = "--format pretty --tags @#{tags}"
    end
end

# Cucumber::Rake::Task.new(:features) do |t|
#     t.cucumber_opts = "--format progress --tags @smoke"
# end