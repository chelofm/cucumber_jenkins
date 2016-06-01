require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
    t.cucumber_opts = "-r features --format progress --tags @smoke  -f html -o reports/smoke_testing_report.html"
end