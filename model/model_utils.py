from fastapi import FastAPI
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.exc import IntegrityError
from sqlalchemy import asc, desc, Column
from lib.db_init import *

def by_attr_first(cls, attr, value):
    query = DBSession.query(cls). \
                filter(cls.bln_active == True). \
                filter(getattr(cls, attr) == value). \
                order_by(desc(getattr(cls, 'id'))). \
                first()

    return query