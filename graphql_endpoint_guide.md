# GraphQL
Our GraphQL endpoint falls into two categories: queries and mutations.


### Queries
1. **[user(name: STRING)](https://github.com/concert-crew/server/blob/main/graphql_endpoint_guide.md)** _Finds information for a specific user by name in the database, including **events** they have added to their profile, and other users they have added as **friends**_

 - Example Query
  ```
  query {
    user(name: "Mayu") {
      id
      name
      image
      events {
       id
      }
      eventCount
      friends {
       id
      }
      createdAt
      updatedAt
    }
  }
  ```
  
 - Example Response
  ```
  {
    "data": {
      "user": {
        "id": "3",
        "name": "Mayu",
        "image": "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png",
        "events": [
          {
            "id": "2"
          }
        ],
        "eventCount": 1,
        "friends": [
          {
            "id": "1"
          },
          {
            "id": "4"
          }
        ],
        "createdAt": "2022-10-25T17:48:28Z",
        "updatedAt": "2022-10-25T17:48:28Z"
      }
    }
  }
  ```

2. **[users](https://github.com/concert-crew/server/blob/main/graphql_endpoint_guide.md)** _Returns all users in the database_

  - Example Query
  ```
  query {
    users {
      id
      name
      image
      events
      eventCount
      friends
      createdAt
      updatedAt
    }
  }
  ```
  
  - Example Response
  ```
  {
   "data": {
     "users": [
       {
         "id": "1",
         "name": "Abby",
         "image": "https://avatars.githubusercontent.com/u/100726140?s=400&u=fefcffaec4d464cc411254317c47b087ab504c42&v=4",
         "events": [
           {
             "id": "1"
           }
         ],
         "eventCount": 1,
         "friends": [
           {
             "id": "2"
           },
           {
             "id": "3"
           }
         ],
         "createdAt": "2022-10-25T17:48:28Z",
         "updatedAt": "2022-10-25T17:48:28Z"
       },
       {
         "id": "2",
         "name": "Chantal",
         "image": "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png",
         "events": [
           {
             "id": "1"
           },
           {
             "id": "7"
           }
         ],
         "eventCount": 2,
         "friends": [
           {
             "id": "1"
           }
         ],
         "createdAt": "2022-10-25T17:48:28Z",
         "updatedAt": "2022-10-25T17:48:28Z"
       },
       {
         "id": "3",
         "name": "Mayu",
         "image": "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png",
         "events": [
           {
             "id": "2"
           }
         ],
         "eventCount": 1,
         "friends": [
           {
             "id": "1"
           },
           {
             "id": "4"
           }
         ],
         "createdAt": "2022-10-25T17:48:28Z",
         "updatedAt": "2022-10-25T17:48:28Z"
       }
      ]
     }
    }
  ```
    
3. **[event(name: STRING)](https://github.com/concert-crew/server/blob/main/graphql_endpoint_guide.md)** _Finds a specific concert event by name_

  - Example Query
  ```
  query {
    event(name: "Clozee") {
      id
      name
      ticketmasterId    
      buyTicketsUrl
      image
      date    
      time
      venueName
      city
      state
      address
      longitude
      latitude
      attendees {
        id
      }
      createdAt
      updatedAt
    }
  }
  ```
  
  - Example Response
  ```
    {
    "data": {
      "event": {
        "id": "2",
        "name": "Clozee",
        "ticketmasterId": "K8vZ9174Uwf",
        "buyTicketsUrl": "https://www.ticketmaster.com/clozee-tickets/artist/2236900",
        "image": "https://s1.ticketm.net/dam/a/a97/da6b1d3a-2403-4244-9d2b-15992fbeea97_1409151_TABLET_LANDSCAPE_LARGE_16_9.jpg",
        "date": "2023-03-24",
        "time": "17:30:00",
        "venueName": "Downtown Miami",
        "city": "Miami",
        "state": "Florida",
        "address": "Streets of Downtown Miami",
        "longitude": "-80.213359",
        "latitude": "25.760077",
        "attendees": [
          {
            "id": "3"
          }
        ],
        "createdAt": "2022-10-25T17:48:28Z",
        "updatedAt": "2022-10-25T17:48:28Z"
      }
    }
  }
  ```
  
4. **[events](https://github.com/concert-crew/server/blob/main/graphql_endpoint_guide.md)** _Returns all concert events in the database_

  - Example Query
  ```
  query {
    events {
      id
      name
      ticketmasterId    
      buyTicketsUrl
      image
      date    
      time
      venueName
      city
      state
      address
      longitude
      latitude
      attendees {
        id
      }
      createdAt
      updatedAt
    }
  }
  ```
  
  - Example Response
  ```

  {
  "data": {
    "events": [
      {
        "id": "1",
        "name": "LIZZO",
        "ticketmasterId": "ZxqgVMyxjZBYPJzwisVEJswJSIcnzynMZAA6",
        "buyTicketsUrl": "https://www.eticketing.co.uk/asmglobalmanchester",
        "image": "https://s1.ticketm.net/dam/c/8cf/a6653880-7899-4f67-8067-1f95f4d158cf_124761_TABLET_LANDSCAPE_LARGE_16_9.jpg",
        "date": "2023-03-11",
        "time": "19:30:00",
        "venueName": "AO Arena",
        "city": "Manchester",
        "state": "Great Britain",
        "address": "Victoria Station, Hunts Bank",
        "longitude": "-2.244066",
        "latitude": "53.488164",
        "attendees": [
          {
            "id": "1"
          },
          {
            "id": "2"
          }
        ],
        "createdAt": "2022-10-25T17:48:28Z",
        "updatedAt": "2022-10-25T17:48:28Z"
      },
      {
        "id": "2",
        "name": "Clozee",
        "ticketmasterId": "K8vZ9174Uwf",
        "buyTicketsUrl": "https://www.ticketmaster.com/clozee-tickets/artist/2236900",
        "image": "https://s1.ticketm.net/dam/a/a97/da6b1d3a-2403-4244-9d2b-15992fbeea97_1409151_TABLET_LANDSCAPE_LARGE_16_9.jpg",
        "date": "2023-03-24",
        "time": "17:30:00",
        "venueName": "Downtown Miami",
        "city": "Miami",
        "state": "Florida",
        "address": "Streets of Downtown Miami",
        "longitude": "-80.213359",
        "latitude": "25.760077",
        "attendees": [
          {
            "id": "3"
          }
        ],
        "createdAt": "2022-10-25T17:48:28Z",
        "updatedAt": "2022-10-25T17:48:28Z"
        }
      ]
    }
  }
  ```
  
5. **[userEvents](https://github.com/concert-crew/server/blob/main/graphql_endpoint_guide.md)** _Returns all UserEvent associations for users that have added events to their profile_

  - Example Query
  ```
  query {
    userEvents {
      id
      userId
      eventId
    }
  }
  ```
  
  -Example Response
  ```
  {
    "data": {
      "userEvents": [
        {
          "id": "1",
          "userId": 1,
          "eventId": 1
        },
        {
          "id": "2",
          "userId": 2,
          "eventId": 1
        },
        {
          "id": "3",
          "userId": 3,
          "eventId": 2
        }
      ]
    }
  }
  ```
  
### Mutations

1. **[createEvent](https://github.com/concert-crew/server/blob/main/graphql_endpoint_guide.md)** _Creates a new event for a user to add to the event their profile_

  - Example Query
  ```
  mutation {
   createEvent(input: {
    name: "Chaining Test",
    date: "today",
    image:"url",
    buyTicketsUrl:"url",
    time:"now",
    venueName:"here",
    city:"here",
    state: "here",
    address:"here",
    longitude: "here",
    latitude: "here",
    ticketmasterId: "test123",
    userId: 7
   }) {
   event {
    id,
    attendees{
     id
       name
      }
    }
   errors
   }
  }
  ```
  
  - Example Response
  ```
  {
    "data": {
      "createEvent": {
        "event": {
          "id": "7",
          "attendees": [
            {
              "id": "2",
              "name": "Chantal"
            },
            {
              "id": "6",
              "name": "Josh"
            },
            {
              "id": "7",
              "name": "Rue"
            }
          ]
        },
        "errors": []
      }
    }
  }
  ```
