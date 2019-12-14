class Task
    def initialize
        @title
        @description
        @status = "incomplete"
        @tasklist = []
    end
    def title
        @title = "this is the title"
    end
    def description
        @description = "this is a task"
    end
    def task_done
        @task_done = "this is Done!"
    end
    def print
        puts @task_done
    end
    def status
        @status
    end
    def status= new_status
        @status = new_status
    end
end
class TaskList < Task
    def initialize
        @task1 = "clean"
    end
