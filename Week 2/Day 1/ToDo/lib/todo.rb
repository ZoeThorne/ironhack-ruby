require "pry"
require "yaml/store"


class ToDoList
	attr_reader :tasks, :user
    def initialize(user)
        @tasks = []
        @user = user
        @todo_store = YAML::Store.new("./public/tasks.yml")
    end

    def add_task(task)
    	@tasks << task
    end

    def delete_task(number)
    	@tasks.delete_if { |task| task.id == number}
    end

    def find_task_by_id(number)
    	this_task = @tasks.find { |task| task.id == number}
    end

    def sort_by_created
    	@tasks = @tasks.sort { | task1, task2 | task1.created_at <=> task2.created_at }
    end

    def save
  		@todo_store.transaction do 
      	@todo_store[@user] = @tasks
  	end
	end

    def load_tasks
        @tasks = YAML.load_file("./public/tasks.yml")
        @tasks[@user]
    end
end

class Task

	attr_reader :content, :id, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now
        @updated_at = nil
    end

    def complete?
    	@complete == true ? true : false
    end

    def complete!
    	@complete = true
    end

    def make_incomplete!
    	@complete = false
    end

    def update_task!(new_task)
    	@updated_at = Time.now
    	@content = new_task
    end
end



task1 = Task.new("Buy the milk")
# puts task1.id
# # 1
task2 = Task.new("Wash the car")
task3 = Task.new("Drink coffee")
# puts task2.id
# # 2
todolist = ToDoList.new("Zoe")
todolist.add_task(task1)
todolist.add_task(task2)
todolist.add_task(task3)
todolist.save

puts task.complete?
task.complete!
puts task.complete?
task.make_incomplete!
puts task.complete?


