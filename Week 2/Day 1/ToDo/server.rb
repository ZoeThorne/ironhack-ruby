require 'sinatra'
require 'sinatra/reloader'
require 'yaml'
require './lib/todo'

todolist = ToDoList.new("Zoe")
todolist.load_tasks

get '/tasks'  do
	@tasks = todolist.tasks	
	@user = todolist.user
	erb(:task_index)
end

get '/newtask' do
	erb(:new_task)
end

post '/create_task' do
	new_task = params[:task]
	this_task = Task.new(new_task)
	todolist.add_task(this_task)
	todolist.save
	redirect to ("/tasks")
end

get '/complete/:id' do
	id = (params[:id]).to_i
	todolist.find_task_by_id(id).complete!
	todolist.save
	redirect to ("/tasks")
end

get '/undo/:id' do
	id = (params[:id]).to_i
	todolist.find_task_by_id(id).make_incomplete!
	todolist.save
	redirect to ("/tasks")
end

get '/delete/:id' do
	id = (params[:id]).to_i
	todolist.delete_task(id)
	todolist.save
	redirect to ("/tasks")
end