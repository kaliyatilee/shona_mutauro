from sqlalchemy import Column
from sqlalchemy.types import Integer, String,Unicode, Date, Time, DateTime,Float
from sqlalchemy import UniqueConstraint
from sqlalchemy import Column
from sqlalchemy import ForeignKey
from sqlalchemy import Column, Integer, String, Text, TIMESTAMP, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.types import Numeric as Decimal,Boolean
from sqlalchemy.sql import func
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class Words(Base):
    __tablename__ = "words"
    id = Column(Integer, primary_key=True, index=True)
    word = Column(String(255), nullable=False)
    definition = Column(Text, nullable=False)
    part_of_speech = Column(String(50), nullable=True)
    pronunciation = Column(String(255), nullable=True)
    # bln_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), server_default=func.now())
    examples = relationship("Examples", back_populates="word")
    synonyms = relationship("Synonyms", back_populates="word")
    antonyms = relationship("Antonyms", back_populates="word")
    images = relationship("Images", back_populates="word")

class Examples(Base):
    __tablename__ = "examples"
    id = Column(Integer, primary_key=True, index=True)
    word_id = Column(Integer, ForeignKey("words.id"), nullable=False)
    example = Column(Text, nullable=False)
    # bln_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), server_default=func.now())
    word = relationship("Words", back_populates="examples")

class Synonyms(Base):
    __tablename__ = "synonyms"
    id = Column(Integer, primary_key=True, index=True)
    word_id = Column(Integer, ForeignKey("words.id"), nullable=False)
    synonym = Column(String(255), nullable=False)
    # bln_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), server_default=func.now())
    word = relationship("Words", back_populates="synonyms")

class Antonyms(Base):
    __tablename__ = "antonyms"
    id = Column(Integer, primary_key=True, index=True)
    word_id = Column(Integer, ForeignKey("words.id"), nullable=False)
    antonym = Column(String(255), nullable=False)
    # bln_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), server_default=func.now())
    word = relationship("Words", back_populates="antonyms")

class Images(Base):
    __tablename__ = "images"
    id = Column(Integer, primary_key=True, index=True)
    word_id = Column(Integer, ForeignKey("words.id"), nullable=False)
    image_url = Column(String(255), nullable=False)
    # bln_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), server_default=func.now())
    word = relationship("Words", back_populates="images")

class Users(Base):
    __tablename__ = "users"
    id = Column(Integer, primary_key=True, index=True)
    username = Column(String(50), nullable=False)
    email = Column(String(255), nullable=False)
    password_hash = Column(String(255), nullable=False)
    # bln_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), server_default=func.now())
    
    
class Tsumos(Base):
    __tablename__ = "tbl_tsumo"
    id = Column(Integer, primary_key=True, index=True)
    word = Column(Text, nullable=False)
    bln_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), server_default=func.now())
    
class Nyaudzousingwi(Base):
    __tablename__ = "tbl_nyaudzousingwi"
    id = Column(Integer, primary_key=True, index=True)
    word = Column(Text, nullable=False)
    definition = Column(Text, nullable=False)
    bln_active = Column(Boolean, default=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), server_default=func.now())
    
    
    