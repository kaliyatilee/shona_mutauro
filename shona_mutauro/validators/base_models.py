from typing import List
from pydantic import BaseModel

class Word(BaseModel):
    word : str
    defination : str
    examples: List[str]
    
class EditWord(BaseModel):
    id: int
    word:str
    defination : str
    examples: List[str]
    
class DeleteWord(BaseModel):
    id:int

class Tsumo(BaseModel):
    word : str
    
class EditTsumo(BaseModel):
    id: int
    word:str
    
class DeleteTsumo(BaseModel):
    id:int
    
class NyaudzousingwiModel(BaseModel):
    word : str
    defination : str
    
class EditNyaudzousingwiModel(BaseModel):
    id: int
    word:str
    defination : str
    
class DeleteNyaudzousingwiModel(BaseModel):
    id:int
