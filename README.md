# DiariesApi

* Ruby version - 2.7.*

* Rails - 6.*

* Database - Postgresql

* System dependencies - Redis


# API
Action            | Request Type  |   Path          | Body          | Required columns
----------------- | ------------- | ----------------| ------------- | -----------------
Create new diary  |      POST     | /api/diaries/   | New Diary     | title, expiration, kind
Update diary      |   PUT/PATCH   | /api/diaries/:id| Updated Diary | title, expiration, kind
Delete diary      |     DELETE    | /api/diaries/:id|       -       |
Get diary by id   |      GET      | /api/diaries/:id|       -       |
Get all diaries   |      GET      |  /api/diaries/  |       -       |
Create new note   |      POST     |  /api/notes/    | New Note      | text, diary_id
Update note       |   PUT/PATCH   | /api/notes/:id  | Updated Note  | text, diary_id
Delete note       |     DELETE    | /api/notes/:id  |       -       |
Get note by id    |      GET      | /api/notes/:id  |       -       |
Get all notes     |      GET      |  /api/notes/    |       -       |

# Launching
`>>sidekiq` <br/> `>>rails s`
