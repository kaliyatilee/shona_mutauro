from pydantic import BaseModel

class ResponseValidatorSingle(BaseModel):
    success: bool = False
    data: dict = {}
    message: str = ''

class ResponseValidatorMulti(BaseModel):
    success: bool = False
    data: list = []
    message: str = ''