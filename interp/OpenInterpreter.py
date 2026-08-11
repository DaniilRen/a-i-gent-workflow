from .Interpreter import Interpreter

from typing import Optional
from interpreter import interpreter
import json


class OpenInterpreter(Interpreter):
    def __init__(self):
        self.interpreter_instance = interpreter

    def configure(self, path: str = "config.json") -> None:
        with open(path, 'r') as f:
            config = json.load(f)
    
        self.interpreter_instance.llm.model = config["interpreter"]["llm"]["model"]
        self.interpreter_instance.llm.api_base = config["interpreter"]["llm"]["api_base"]
        self.interpreter_instance.llm.supports_functions = config["interpreter"]["llm"]["supports_functions"]
        self.interpreter_instance.auto_run = config["interpreter"]["auto_run"]
        self.interpreter_instance.local = config["interpreter"]["local"]

    def chat(self, task: Optional[str] = None) -> None:
        self.interpreter_instance.chat(task)