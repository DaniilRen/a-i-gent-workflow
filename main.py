from interp.OpenInterpreter import OpenInterpreter
from interp.Reader import Reader


if __name__ == "__main__":
    interpreter = OpenInterpreter()
    interpreter.configure("config.json")

    task_reader = Reader()
    task_reader.read_tasks()
    for task in task_reader.get_tasks():
        print(f"{task_reader.get_tasks().index(task)+1}) {task}")
        interpreter.chat(task)        
    


