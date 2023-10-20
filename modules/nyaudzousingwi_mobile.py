from fastapi import FastAPI
from fastapi.encoders import jsonable_encoder
from validators.base_models import *
from validators.response_utils import *
from lib.manual import *
app = FastAPI(title="Shona Nyaudzousingwi ", root_path="/shona_Nyaudzousingwi", version='0.0.1')


@app.post("/GetNyaudzousingwi",
    response_model=ResponseValidatorMulti,
    tags=['Dictionary'],
    summary="Function that returns all dictionary Nyaudzousingwi",
)
async def get_Nyaudzousingwis():
    return manual_get_nyaudzousingwi()

@app.post("/AddNyaudzousingwi",
    tags=['Dictionary'],
    summary="Add new Nyaudzousingwi"
)

async def add_Nyaudzousingwi(incoming_args: NyaudzousingwiModel):
    kwargs = jsonable_encoder(incoming_args)
    return manual_add_nyaudzousingwi(kwargs)

@app.post("/EditNyaudzousingwi",
     tags=['Dictionary'],
     summary="Edit Nyaudzousingwi")

async def edit_Nyaudzousingwi(incoming_args: EditNyaudzousingwiModel):
    kwargs = jsonable_encoder(incoming_args)
    return manual_edit_nyaudzousingwi(kwargs)

@app.delete("/DeleteNyaudzousingwi/",
      tags=['Dictionary'],
      summary="Delete product")
async def delete_product(incoming_args: DeleteNyaudzousingwiModel):
    kwargs = jsonable_encoder(incoming_args)
    return manual_delete_nyaudzousingwi(kwargs)