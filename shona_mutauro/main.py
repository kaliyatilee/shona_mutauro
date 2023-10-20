# main.py

from fastapi import FastAPI
import os
from modules.shona_dict_mobile import app as dictionary_words
from modules.tsumo_mobile import app as shona_tsumo
from modules.nyaudzousingwi_mobile import app as shona_Nyaudzousingwi
app = FastAPI(debug=True)

appname = os.getenv("APPNAME", 'shona_dict')
app = FastAPI(title=appname)

app.mount("/shona_dictionary", dictionary_words)
app.mount("/shona_tsumo",shona_tsumo)
app.mount("/shona_Nyaudzousingwi",shona_Nyaudzousingwi)


@app.get("/")
async def root():
    return {"message": "Hello World"}
@app.get("/hey")
async def main():
    return {"hello lee"}