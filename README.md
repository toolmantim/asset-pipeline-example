# Asset Pipeline Example

An example Rails 3.2 app showing how to use the asset pipeline.

Demonstrates:

 * Using `@import` instead of `require` directives in scss/sass
 * Laying out files and using `require_tree`
 * JST and eco templates w/ Backbone
 * data-uri'd assets
 * Using timestamped assets from both JS and CSS

## Running

    bundle install
    rails s

## Testing production-like asset compilation

* Uncomment the lines at the bottom of `application.rb`
* Run `rake assets:precompile`
* Run the rails app
* View source (and see the public/assets directory)
