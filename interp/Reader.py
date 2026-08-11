import json


class Reader():
    def __init__(self):
        self.tasks = []
        self.global_instructions = ""

    def read_tasks(self, path: str = "tasks.json"):
        with open(path, 'r') as src:
            tasks = json.load(src)
            self.tasks = tasks["tasks"]
            self.global_instructions = "\n".join(tasks["global_instructions"])
        self.apply_global_instructions()

    def get_tasks(self) -> list:
        return self.tasks

    def apply_global_instructions(self) -> None:
        for i in range(len(self.tasks)):
            self.tasks[i] = self.global_instructions + "\n" + self.tasks[i]
            