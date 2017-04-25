> db.users.createIndex({"expira":1},{expireAfterSeconds:518400})

> db.users.createIndex({"expira_2":1},{expireAfterSeconds:604800})

> db.users.insert({_id:20,name:"prueba_1",age:6,type:1,status:"P",favorites:{artist:"desconocido",food:"pizza"},finished:[18,9],badges:["red","black","green"],points:[{points:89,bonus:23},{points:45,bonus:9}],expira:new Date()})

db.users.insert({_id:19,name:"prueba_2",age:7,type:2,status:"D",favorites:{artist:"desconocido",food:"otro"},finished:[90,9],badges:["pink","blond"],points:[{points:8,bonus:2},{points:3,bonus:32}],expira_2:new Date()})


