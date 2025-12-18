### Логічна модель даних (JSON)

```json
{
  "user": {
    "name": "string",
    "phoneNumber": "string",
    "location": {
      "latitude": "number",
      "longitude": "number"
    },
    "emergencyContacts": [
      {
        "contactName": "string",
        "contactPhone": "string"
      }
    ],
    "alerts": [
      {
        "activationTime": "datetime",
        "notifications": [
          {
            "message": "string",
            "time": "datetime"
          }
        ]
      }
    ]
  }
}
