from validators.base_models import *
from model.models import *
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from lib.db_init import *
from lib.db_utils import *
def manual_add_words(kwargs):
    return create_word(kwargs)

def manual_edit_word(kwargs):
    product_id = kwargs.get("product_id",None)
    kwargs['id'] = product_id
    
    return create_or_update(Words,kwargs,"Word edited")
    
def manual_get_words():
    return get_words()

def manual_delete_word(kwargs):
    id = kwargs.get("id",None)
    message = 'Word  removed'
    kwargs['id'] = id
    kwargs['bln_active'] = False
    return delete(Words,kwargs,message)


def manual_add_tsumos(kwargs):
    return create_or_update(Tsumos,kwargs ,"created")

def manual_edit_tsumo(kwargs):
    product_id = kwargs.get("product_id",None)
    kwargs['id'] = product_id
    
    return create_or_update(Tsumo,kwargs,"tsumo edited")
    
def manual_get_tsumos():
    return get_all(Tsumos)

def manual_delete_tsumo(kwargs):
    id = kwargs.get("id",None)
    message = 'tsumo  removed'
    kwargs['id'] = id
    kwargs['bln_active'] = False
    return delete(Tsumos,kwargs,message)


def manual_add_nyaudzousingwi(kwargs):
    return add_nyaudzousingwi(kwargs)

def manual_edit_nyaudzousingwi(kwargs):
    return create_or_update(Nyaudzousingwi,kwargs,"edited")
    
def manual_get_nyaudzousingwi():
    return get_all(Nyaudzousingwi)

def manual_delete_nyaudzousingwi(kwargs):
    id = kwargs.get("id",None)
    message = 'Nyaudzousingwi  removed'
    kwargs['id'] = id
    kwargs['bln_active'] = False
    return delete(Nyaudzousingwi,kwargs,message)