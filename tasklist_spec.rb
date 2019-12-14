require 'rspec'
require_relative 'tasklist'

describe "tasklist" do
    it "This is what you have to do" do
        expect{Task.new}.to_not raise_error
    end

    it "it has a title" do
        a_task = Task.new
        expect(a_task.title).to be_a String
    end
        it "it has a description" do
            a_description = Task.new
            expect(a_description.description).to be_a String
        end
    it "it has a default value of 'incomplete'" do
        a_task_done = Task.new
        expect(a_task_done.status).to eq "incomplete"
    end

    it "it can update the value of status!" do
        a_task_done = Task.new
        a_task_done.status = "Done"
        expect(a_task_done.status).to eq "Done"
    end
    it "it is a tasklist" do
        record_current_task = Task.new
        expect(record_current_task).to eq String
    end
end

# Story: As a developer, I can add all of my Tasks to a TaskList. Hint: A TaskList has-many Tasks
# Story: As a developer with a TaskList, I can get the completed items.
# Story: As a developer with a TaskList, I can get the incomplete items.
