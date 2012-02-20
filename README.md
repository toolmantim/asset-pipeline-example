# Asset Pipeline Example

Example Rails 3.2 app showing how to use the asset pipeline, how to scare unicorns, and how to activate epic rainbows.

Features:

 * Laying out SASS files using `@import` instead of the Sprockets `require` directive (as per [the note in the README for sass-rails](https://github.com/rails/sass-rails#readme))
 * Laying out JS files using `require_tree`
 * JST and eco templates w/ Backbone
 * data-uri'd assets
 * Referencing an asset from both CSS and JS (see the `link[rel]` in the app layout)
 * Tasteful use of Comic Sans with a subtle yet beautiful text-shadow

## Running

    bundle install
    rake assets:precompile
    rails s

## Re-enabling development asset compilation

You'll see the bottom of `development.rb` has two lines copied from `production.rb` to test and demonstrate production asset compilation.

To change this back to normal behaviour simply comment out the two lines at the bottom of `development.rb`, run `rake assets:clean`, and restart the rails server.

## Reloading assets after precompilation

If you're running with `config.assets.compile = false` and run `rake assets:compile` you'll need to restart the server to see changes. This is because the `public/assets/digest.yml` is loaded only on application boot.

## Discussion points

### Avoiding Sprockets directives in SASS

As per [the note in the README for sass-rails](https://github.com/rails/sass-rails#readme)–the Gem that Rails loads from your Gemfile which adds SASS support to the asset pipeline–you should never use the Sprockets `require` directives in your CSS.

SASS (when used through `sass-rails`) can do everything the Sprockets directives can with the bonus of playing well with `@import` and `@extend`.

### Vendor and lib assets

I've included vendor fies directly in the assets directly (e.g. `app/assets/javascripts/vendor`), but Rails also looks in `vendor/assets`, `lib/assets`, and Gem lib paths. I like to take ownership of all assets, third-party or otherwise, and keep them together in `app/assets`. This is just personal preference and you can place them in `vendor/assets` and `lib/assets` if you wish.