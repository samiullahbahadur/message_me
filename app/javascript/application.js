// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
//= require rails-ujs
//= require jquery
//= require activestorage
//= require semantic-ui
//= require turboLinks
//= require_tree




$(document).on('turboLinks:load', function(){
    $('.ui.dropdown').dropdown();
  
})