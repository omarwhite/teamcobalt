{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "Player",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"head_offset_x","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"25","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"head_offset_y","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"25","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"head_obj","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"Player_Head","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"max_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"10","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"health_drain","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0.1","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"tongue_obj","filters":[
        "GMObject",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"Tongue","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"max_eat_reach","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"400","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"eat_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"1","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"retract_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"1","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"eat_cooldown","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"5","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "PlayerBody",
    "path": "sprites/PlayerBody/PlayerBody.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}