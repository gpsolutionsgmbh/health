# Assumptions

- Food recorded only once per day and can be updated
- Activities recorded once per day and can be updated

# Create User
```
POST /users

{
  "user": {
    "username": "test"
    "height": 180,
    "weight": 90
  }
}
```

# Update User
```
PUT /users/:username

{
  "user": {
    "height": 180,
    "weight": 90
  }
}
```

# Save Food
```
POST /users/:username/foods
{
  "foods": [
    {
      "nutrion": "c",
      "amount": 5
    },
    {
      "nutrion": "d3",
      "amount": 7
    },
    {
      "nutrion": "iron",
      "amount": 4
    }
  ],
  "date": "2020-12-06"
}
```

# Update Food
```
PUT /users/:username/foods
{
  "foods": [
    {
      "nutrion": "c",
      "amount": 5
    },
    {
      "nutrion": "d3",
      "amount": 7
    },
    {
      "nutrion": "iron",
      "amount": 4
    }
  ],
  "date": "2020-12-06"
}
```

# Save Activities
```
POST /users/:username/activities
{
  "activities": [
    {
      "nutrion": "c",
      "amount": 1
    },
    {
      "nutrion": "d3",
      "amount": 2
    },
    {
      "nutrion": "iron",
      "amount": 3
    }
  ],
  "date": "2020-12-06"
}
```

# Update Activities
```
PUT /users/:username/activities
{
  "activities": [
    {
      "nutrion": "c",
      "amount": 1
    },
    {
      "nutrion": "d3",
      "amount": 2
    },
    {
      "nutrion": "iron",
      "amount": 3
    }
  ],
  "date": "2020-12-06"
}
```

# Get Recipe
```
GET /users/:username/recipes?date=2020-12-06
```
