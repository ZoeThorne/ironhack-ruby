require 'sinatra'
require 'sinatra/reloader'
require 'yaml'
require './lib/todo'

todolist = ToDoList.new("Zoe")
todolist.load_tasks

get '/tasks'  do	
	erb(:task_index)
end