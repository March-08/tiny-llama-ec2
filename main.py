from fastapi import FastAPI
from model import model_query
from pydantic import BaseModel


class Query(BaseModel):
    prompt: str


app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello!"}


@app.post("/query")
async def root(query: Query):
    res = model_query(query=query.prompt)
    return {"message": f"{res}"}
