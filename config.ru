require_relative './config/env'

use Rack::MethodOverride 
use ParentsController 
use ChoresController 
run ApplicationController 
