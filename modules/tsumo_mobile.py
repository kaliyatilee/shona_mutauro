from fastapi import FastAPI
from fastapi.encoders import jsonable_encoder
from validators.base_models import *
from validators.response_utils import *
from lib.manual import *
app = FastAPI(title="Shona Tsumo ", root_path="/shona_tsumo", version='0.0.1')


@app.post("/GetTsumo",
    response_model=ResponseValidatorMulti,
    tags=['Dictionary'],
    summary="Function that returns all dictionary Tsumo",
)
async def get_Tsumos():
    return manual_get_tsumos()

@app.post("/AddTsumo",
    tags=['Dictionary'],
    summary="Add new Tsumo"
)

async def add_Tsumo(incoming_args: Tsumo):
    kwargs = jsonable_encoder(incoming_args)
    return manual_add_tsumos(kwargs)

@app.post("/EditTsumo",
     tags=['Dictionary'],
     summary="Edit Tsumo")

async def edit_Tsumo(incoming_args: EditTsumo):
    kwargs = jsonable_encoder(incoming_args)
    return manual_edit_tsumo(kwargs)

@app.delete("/DeleteTsumo/",
      tags=['Dictionary'],
      summary="Delete product")
async def delete_product(incoming_args: DeleteTsumo):
    kwargs = jsonable_encoder(incoming_args)
    return manual_delete_tsumo(kwargs)