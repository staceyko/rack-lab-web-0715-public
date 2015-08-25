require_relative 'config/environment'
require 'rack'


use ErbMaker
use RandomNumber
use RequestMethod
use ServerPort
run Application.new
