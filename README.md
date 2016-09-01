FORMAT: 1A
HOST: http://brlive.herokuapp.com/api/v3

# BrLive

API para integração dos aplicativos BrLive - Atleta e BrLive - Organizador com o BrLive Web.

A API tem 5 "root" endpoints:

- Events (public)
- Events (private)
- Enrollments
- Entries
- Athletes

E diversos outros endpoints alinhados aos supracitados. Por fim, **todas** as rotas da API são:

```
GET  /api/v3/events/:event_id/results
GET  /api/v3/events/:event_id/results/:id
GET  /api/v3/user/events/:event_id/enrollments
GET  /api/v3/user/events
GET  /api/v3/user/events/:id
GET  /api/v3/user/enrollments/:enrollment_id/versions
GET  /api/v3/user/enrollments/:enrollment_id/notifications
POST /api/v3/user/enrollments/:enrollment_id/change_requests
GET  /api/v3/user/enrollments/:id
POST /api/v3/user/entries/:entry_id/transfers
GET  /api/v3/user/athlete
POST /api/v3/user/athletes/:athlete_id/change_requests
GET  /api/v3/user/athletes/:id
```