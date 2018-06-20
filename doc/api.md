FORMAT: 1A

# Notes

Notes is a simple API allowing consumers to manage notes.

## Notes [/notes]

### Retrieve all notes [GET]

+ Request

    + Headers

            Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==

+ Response 200 (application/json)

    + Attributes (Notes)

+ Response 200

    + Attributes(EmptyList)

### Create a notes [POST]

+ Request (application/json)

    + Attributes (Note)

+ Response 201 (application/json)

    + Attributes (Note)


+ Response 400 (application/json)

    + Attributes (ValidationError)

+ Response 401 (application/json)

    + Attributes (AuthenticationError)

+ Response 403 (application/json)

    + Attributes (AuthorizationError)

## Note [/notes/{id}]

+ Parameters
    + id: abcd1234 (string, required) - Id of a note.

### Retrieve note by id [GET]

+ Response 200 (application/json)

    + Attributes (Note)

+ Response 404

+ Response 401 (application/json)

    + Attributes (AuthenticationError)

+ Response 403 (application/json)

    + Attributes (AuthorizationError)

### Delete note by id [DELETE]

+ Response 204

+ Response 404

+ Response 401 (application/json)

    + Attributes (AuthenticationError)

+ Response 403 (application/json)

    + Attributes (AuthorizationError)

### Update note by id [PUT]

+ Request (application/json)

    + Attributes (Note)

+ Response 200 (application/json)

    + Attributes (Note)

+ Response 404

+ Response 401 (application/json)

    + Attributes (AuthenticationError)

+ Response 403 (application/json)

    + Attributes (AuthorizationError)

# Data Structures

## Note(object)
+ _id: abc123 (string, optional)
+ title: This is a note. (string, required)
+ description: This is the note content. (string, required)

## Notes(array)
+ (Note)
+ (Note)

## EmptyList(array)

## AuthorizationError(object)
+ message: 300 (number, required)
+ type: You're not allowed to create this resource. (string, required)
+ code: AuthorizationException (string, required)

## AuthenticationError(object)
+ message: 600 (number, required)
+ type: Must have a valid token to access this endpoint. (string, required)
+ code: AuthenticationException (string, required)

## ValidationError(object)
+ message: 800 (number, required)
+ type: Title is too long. The Title field should not exceed 60 characters. (string, required)
+ code: ValidatioException (string, required)