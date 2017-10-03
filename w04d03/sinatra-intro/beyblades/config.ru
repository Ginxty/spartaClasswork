require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/json'
require_relative './beyblades_controller.rb'
require_relative './beyblades_api_controller.rb'

use BeybladesApiController
run BeybladesController
