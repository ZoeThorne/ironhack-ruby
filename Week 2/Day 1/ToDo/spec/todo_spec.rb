require './todo'

describe Task do 

	let (:task) { Task.new("Buy milk") }

	describe "#complete?" do
    it "returns false by default" do
      expect(task.complete?).to eq(false)
    end
  end

  	describe "#complete!" do
    it "returns true when method is run" do
      expect(task.complete!).to eq(true)
    end
  end

  	describe "#make_incomplete!" do
    it "returns false when method is run" do
      expect(task.make_incomplete!).to eq(false)
    end
  end

    describe "#update_task!" do
    it "changes the task content to the string given" do
      expect(task.update_task!("Walk the dog")).to eq(task.content) 
    end
  end
end

describe ToDoList do

	let (:todolist) { ToDoList.new("Zoe")}

	describe "#delete_task" do
  	it "returns an array without the task that refers to the id" do
  		task = Task.new("Do the washing")
  		todolist.add_task(task)
  		todolist.delete_task(5)
  		expect(todolist.tasks).to eq([])
  	end
  	end

	describe "#add_task" do
	it "returns an array with the task added" do
		expect(todolist.add_task("Do the washing")).to eq(["Do the washing"])
	end
  	end

  	describe "#find_task_by_id" do
  	it "returns nil if there is no task for this id" do
  		expect(todolist.find_task_by_id(1)).to eq(nil)
  	end

  end
  	describe "#find_task_by_id" do
  		it "returns the task with the id number given" do
  		task = Task.new("Do the washing")
  		todolist.add_task(task)	
  		expect(todolist.find_task_by_id(task.id)).to eq(task)
  	end
  end

  	describe "#sort_by_created" do
  		it "returns the array sorted by created_at date" do
  			task1 = Task.new("Buy milk")
  			todolist.add_task(task1)
  			task2 = Task.new("Walk the dog")
  			todolist.add_task(task2)
  			todolist.sort_by_created
  			expect(todolist.tasks[0].created_at).to be <= todolist.tasks[1].created_at
  	end
  end



end