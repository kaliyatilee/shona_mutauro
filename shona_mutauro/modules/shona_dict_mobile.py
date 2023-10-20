from fastapi import FastAPI
from fastapi.encoders import jsonable_encoder
from validators.base_models import *
from validators.response_utils import *
from lib.manual import *

app = FastAPI(title="Shona Dictionary ", root_path="/shona_dictionary", version='0.0.1')

@app.post("/ping")
async def ping():
    return True

@app.post("/GetWords",
    response_model=ResponseValidatorMulti,
    tags=['Dictionary'],
    summary="Function that returns all dictionary words",
)
async def get_words():
    return manual_get_words()

@app.post("/AddWords",
    tags=['Dictionary'],
    summary="Add new word"
)

async def add_word(incoming_args: Word):
    kwargs = jsonable_encoder(incoming_args)
    return manual_add_words(kwargs)

@app.post("/EditWord",
     tags=['Dictionary'],
     summary="Edit word")

async def edit_word(incoming_args: EditWord):
    kwargs = jsonable_encoder(incoming_args)
    return manual_edit_word(kwargs)

@app.delete("/DeleteWord/",
      tags=['Dictionary'],
      summary="Delete product")
async def delete_product(incoming_args: DeleteWord):
    kwargs = jsonable_encoder(incoming_args)
    return manual_delete_word(kwargs)