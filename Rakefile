task :clean do
  sh('rm -rf _site')
end

task :deep_clean => [:clean] do
  sh('rm -rf gems')
end

task :dependencies do
  sh('bundle config set --local path "gems"')
  sh('bundle install')

  # Fix pathutil on Ruby 3; works around https://github.com/envygeeks/pathutil/pull/5
  # as suggested by https://stackoverflow.com/a/73909894/67873
  pathutil_path = `bundle exec gem which pathutil`.strip()
  content = File.read(pathutil_path).gsub(', kwd', ', **kwd')
  File.write(pathutil_path, content)
end

task :js_dependencies do
  sh('npm install')
end

file '_local.yml' do
  touch '_local.yml'
end

[
  'js/lib/angular-ui-select2/.git',
  'js/lib/angular-storage/.git',
  'js/lib/angularjs-ordinal-filter/.git',
  '_sass/brand/.git',
].each { |x|
  file x do
    sh('git submodule update --init')
  end
}

task :submodules => [
  'js/lib/angular-ui-select2/.git',
  'js/lib/angular-storage/.git',
  'js/lib/angularjs-ordinal-filter/.git',
  '_sass/brand/.git',
]

task :dev => [:dependencies, :submodules, :'_local.yml'] do
  sh('bundle exec jekyll serve --drafts --config _config.yml,_local.yml')
end

task :build => [:dependencies, :submodules] do
  sh('bundle exec jekyll build')
end

task :validate_build => [:build] do
  # Explanation of arguments:
  # --assume-extension  # Tells html-proofer that `.html` files can be accessed without the `.html` part in the url.
  # --disable-external  # For speed. Ideally we'd check external links too, but ignoring for now.
  # --empty-alt-ignore  # To avoid needing to fix lots upfront, we can migrate towards this later.
  # --allow-hash-href   # Allow empty `#` links to mean "top of page". It's true that these can be errors, however we have far too many to really address this.
  # --url-swap          # Adjust for Jekyll's baseurl. See https://github.com/gjtorikian/html-proofer/issues/618 for more.
  sh('bundle exec htmlproofer _site --assume-extension --disable-external --empty-alt-ignore --allow-hash-href --url-swap "^/competition-website/:/"')
end

task :validate_js => [:js_dependencies] do
  sh('./run-tests')
end

task :validate => [:validate_build, :validate_js]
