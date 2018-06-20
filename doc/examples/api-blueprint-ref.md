FORMAT: 1A

# JSON Schema

Every request and response can have a schema. Below you will find examples
using [JSON Schema](http://json-schema.org/) to describe the format of request
and response body content.

## API Blueprint

- [Previous: Named Endpoints](13.%20Named%20Endpoints.md)
- [This: Raw API Blueprint](https://raw.github.com/apiaryio/api-blueprint/master/examples/14.%20JSON%20Schema.md)
- [Next: Advanced JSON Schema](15.%20Advanced%20JSON%20Schema.md)

# Notes [/notes]

+ Model (text/plain)

        Hello World

# Notes [/notes/{_id}]
This resource represents one particular note identified by its *_id*.

+ Parameters

  + _id: abc123 (required) - Unique identifier for a note

## Get a note [GET]

Gets all notes notes or one by its *_id*.

+ Response 200 (application/json)

  + Body

          [
            {
              "_id": "abc123",
              "title": "This is a note",
              "description": "This is the note content."
            },
            {
              "_id": "xyz3242",
              "title": "This is a note",
              "description": "This is the note content."
            }
          ]

  + Schema

        {
            "type": "object",
            "properties": {
                "_id": {
                "type": "string"
                },
                "title": {
                "type": "string"
                },
                "description": {
                "type": "string"
                }
            },
            "required": ["title", "description"]
        }

## Create a note [POST]

Create a note's data it'll return a unique identifier.

+ Request (application/json)

  + Body

          {
              "title": "This is another note",
              "description": "This is the note content."
          }

  + Schema

        {
            "type": "object",
            "properties": {
                "_id": {
                "type": "string"
                },
                "title": {
                "type": "string"
                },
                "description": {
                "type": "string"
                }
            },
            "required": ["title", "description"]
        }

+ Response 200 (application/json)

  + Body

          {
              "title": "This is another note",
              "description": "This is the note content."
          }

  + Schema

        {
            "type": "object",
            "properties": {
                "_id": {
                "type": "string"
                },
                "title": {
                "type": "string"
                },
                "description": {
                "type": "string"
                }
            },
            "required": ["title", "description"]
        }

## Update a note [PUT]

Modify a note's data using its unique identifier. You can edit the `title` and
`description`.

+ Request (application/json)

  + Body

          {
              "title": "This is another note",
              "description": "This is the note content."
          }

  + Schema

        {
            "type": "object",
            "properties": {
                "_id": {
                "type": "string"
                },
                "title": {
                "type": "string"
                },
                "description": {
                "type": "string"
                }
            },
            "required": ["title", "description"]
        }

+ Response 200 (application/json)

  + Body

          {
              "title": "This is another note",
              "description": "This is the note content."
          }

  + Schema

        {
            "type": "object",
            "properties": {
                "_id": {
                "type": "string"
                },
                "title": {
                "type": "string"
                },
                "description": {
                "type": "string"
                }
            },
            "required": ["title", "description"]
        }

## Delete a Note [DELETE]
Delete a note by its *_id*
**Warning:** This action **permanently** removes the message from the database.

+ Response 200 (application/json)

  + Body

          {
              "title": "This is another note",
              "description": "This is the note content."
          }

  + Schema

        {
            "type": "object",
            "properties": {
                "_id": {
                "type": "string"
                },
                "title": {
                "type": "string"
                },
                "description": {
                "type": "string"
                }
            },
            "required": ["title", "description"]
        }

{
    "message": "Removed note with id: 5b28eefababb05f2fe7fbe3f",
    "note": {
        "_id": "5b28eefababb05f2fe7fbe3f",
        "title": "Building a Serverless REST API with Node.js and MongoDB",
        "description": "The Serverless movement has gained a bit of momentum in the past few months.",
        "__v": 0
    }
}