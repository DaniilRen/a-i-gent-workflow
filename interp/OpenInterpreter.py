from .Interpreter import Interpreter

from typing import Optional
from interpreter import interpreter 
import json


class OpenInterpreter(Interpreter):
    def configure(self, path: str = "config.json") -> None:
        with open(path, 'r') as f:
            config = json.load(f)
    
        interpreter.llm.model = config["interpreter"]["llm"]["model"]
        interpreter.llm.api_base = config["interpreter"]["llm"]["api_base"]
        interpreter.llm.supports_functions = config["interpreter"]["llm"]["supports_functions"]
        interpreter.auto_run = config["interpreter"]["auto_run"]
        interpreter.local = config["interpreter"]["local"]

    def chat(self, task: Optional[str] = None) -> None:
        interpreter.chat(task)