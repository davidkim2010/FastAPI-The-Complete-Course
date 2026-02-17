from pydantic import BaseModel, Field


from datetime import datetime
from pydantic import BaseModel, PositiveInt, ValidationError

class User(BaseModel):
    id: int
    name: str = 'John Doe'
    signup_ts: datetime | None
    tastes: dict[str, PositiveInt]

external_data = {
    'id': 123,
    'signup_ts': '2019-06-01 12:22',
    'tastes': {
        'wine': 9,
        'cheese': 7,
        'cabbage': '1',
    },
}

invalid_data = {'id': 'not an int', 'tastes': {}}

try:
    User(**invalid_data)
except ValidationError as e:
    print(e)

raise Exception("Sorry, no numbers below zero")

user = User(**external_data)

print(user.id)
print(user.model_dump())

