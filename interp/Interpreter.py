from abc import ABC, abstractmethod
from typing import Optional, Any

class Interpreter(ABC):
    @abstractmethod
    def configure(self, path: str) -> None:
        pass
    
    @abstractmethod
    def chat(self, task: Optional[str] = None) -> None:
        pass