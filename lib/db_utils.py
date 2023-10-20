from fastapi import FastAPI
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.exc import IntegrityError
from lib.db_init import *
from model.model_utils import *

app = FastAPI()

def get_table(model_name, table_dict):
    table_dict["__tablename__"] = f'{model_name.lower()}'
    return type(model_name, (DeclarativeBase,), table_dict)

def get_all(model):
    dbase_query = DBSession.query(model).all()
    outputlist = []
    for i in dbase_query:
        outputdict = i.__dict__
        outputdict.pop('_sa_instance_state', None)
        outputlist.append(outputdict)

    outputdict = {
        'success' : True,
        'data' : outputlist,
        'message' : 'Success!'
    }
    return outputdict
def create_word(kwargs):
    print("kwargs",kwargs)
    word = kwargs.get("word", None)
    defination = kwargs.get("defination",None)
    examples = kwargs.get("examples",None)
    
    this = Words()
    this.word = word
    this.definition = defination
    DBSession.add(this)
    DBSession.commit()
    DBSession.flush()
    
    for item in examples:
        print("Item",item)
        examples = Examples()
        examples.example = item
        examples.word_id = this.id
        DBSession.add(examples)
        DBSession.commit()
        DBSession.flush()
        
    return {'success': True, 'message': "Created a new word"}
    
def get_words():
    dbase_query = DBSession.query(Words).order_by(Words.word)

    outputlist = []
    
    for word in dbase_query:
        word_dict = word.__dict__
        word_dict.pop('_sa_instance_state', None)
        word_id = word_dict['id']  # Extract the 'id' attribute
        examples = []  # List to store examples for the word
        
        # Query examples for the word using the 'id' attribute
        examples_query = DBSession.query(Examples).filter_by(word_id=word_id)
        for example in examples_query:
            example_dict = example.__dict__
            example_dict.pop('_sa_instance_state', None)
            examples.append(example_dict)
        
        # Add examples to the word dictionary
        word_dict['examples'] = examples
        outputlist.append(word_dict)

    outputdict = {
        'success': True,
        'data': outputlist,
        'message': 'Success!'
    }
    return outputdict

def add_nyaudzousingwi(kwargs):
    print("kwargs",kwargs)
    word = kwargs.get("word", None)
    defination = kwargs.get("defination",None)
    
    this = Nyaudzousingwi()
    this.word = word
    this.definition = defination
    DBSession.add(this)
    DBSession.commit()
    DBSession.flush()
    
    return {'success': True, 'message': "Created a new word"}
     
def create_or_update(model, attr_dict,success):
    print("\ncreate_or_update",model,attr_dict)
    if not attr_dict:
        return None
    this_id = attr_dict.get("id", None)

    this = None
    if not this_id:
        this = model()
    elif this_id:
        this = model.by_attr_first('id', this_id)

    for key, value in attr_dict.items():
        setattr(this, key, value)

    try:
        DBSession.add(this)
        this_id = this.id
        DBSession.commit()
        DBSession.flush()
        return {'success': True, 'message': success}

    except IntegrityError:
        DBSession.rollback()
        print(
            f'Warning, there was a problem creating your {model} data, it may have already been added: ')

        return {'success': 'false', 'message': f'there was a problem creating your {model} data, it may have already been added'}
    except Exception as e:
        DBSession.rollback()
        return {'success': 'false', 'message': f'Warning, an exception occured in {model}: {e}'}
    
def delete(model,attr_dict,success_message):
    if not attr_dict:
        return None
    this_id = attr_dict.get("id", None)
    this = DBSession.query(model).\
        filter(model.id == this_id).first()

    for key, value in attr_dict.items():
        setattr(this, key, value)

    try:
        DBSession.add(this)
        this_id = this.id
        DBSession.commit()
        DBSession.flush()
        return {'success': True, 'message': success_message}

    except IntegrityError:
        DBSession.rollback()
        print(
            f'Warning, there was a problem creating your {model} data, it may have already been added: ')

        return {'success': 'false', 'message': f'there was a problem creating your {model} data, it may have already been added'}
    except Exception as e:
        DBSession.rollback()
        return {'success': 'false', 'message': f'Warning, an exception occured in {model}: {e}'}
        
def get_all_by_vendor(model,attr_dict):
    vendor_id = attr_dict.get("vendor_id",None)
    dbase_query = DBSession.query(model).\
        filter(model.vendor_id == vendor_id).all()
    outputlist = []
    for i in dbase_query:
        outputdict = i.__dict__
        outputdict.pop('_sa_instance_state', None)
        outputlist.append(outputdict)

    outputdict = {
        'success' : True,
        'data' : outputlist,
        'message' : 'Success!'
    }
    return outputdict
    
    
