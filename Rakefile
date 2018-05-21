
task :default => [:npm, :elm, :test, :watch]
task :jenkins => [:npm, :elm, :test, :build]

task :npm do
    sh("cd example && npm install")
end

task :elm do
    sh("cd example && elm package install --yes")
end

task :watch do
    ENV['ELM_DEBUG'] = 'true'
    sh("cd example && npm run watch")
end

task :build do
    sh("cd example && npm run build")
end

task :test do
    sh("cd tests && elm package install --yes")
    sh("elm-test")
end