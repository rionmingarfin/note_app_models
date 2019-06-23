<h1 align ='center'> note_app_models Rest-full-API </h1> 

## link recomended
### [.env](https://medium.com/the-node-js-collection/making-your-node-js-work-everywhere-with-environment-variables-2da8cdf6e786)
### [sequelize](http://docs.sequelizejs.com/)
### [started sequelize 1](https://medium.com/@prajramesh93/getting-started-with-node-express-and-mysql-using-sequelize-ed1225afc3e0)
### [started sequelize 2](https://medium.com/skyshidigital/membuat-restful-api-menggunakan-express-dan-sequelize-ef0e10da36ff)
## GETTING STARTED

This is application rest api made with expres.js,
made this application aims to understand what it is CRUD DATA,cors,dan middleware,paginations,search,sort data by time.
this application uses a sequelize models version 4.44.0

## software preparation needed
* postman
* web server (xampp)
* text editor (visual studio code) 
* crome

## add .env file
add the .env file to your project then copy the code below

``` 
NODE_ENV=development
PORT=3000


 HOST='localhost'
 USER='root'
 PASSWORD=
 DATABASE='note_app_models'
 ```

## how to run this application

 1. git clone https://github.com/rionmingarfin/note_app_models.git
 2. open text editor
 3. run the web server and mysql application,example `xampp`
 4. import db simple_note in phpmyadmin
 5. open terminal in CMD or terminal text editor(visual studio code)
 6. type `npm instal`
 7. tambahkan [.env](https://github.com/rionmingarfin/simple_note_expressjs.git)
 8. type npm start
 9. open postman and run it with port `3000` 

###### note

note before adding the env first

## endPoint LIST

###### 1.GET
- `/categories`
- `/categories/:id` (category by id)
- `/notes`
- `/notes/:id'` (notes by id)
- `/note` (welcome to express)

###### 2.POST
- `/categories`
- `/notes`

###### 3.PUT
- `/categories`
- `/notes`

###### 4.DELETE
- `/categories/:id'` (delete by id)
- `/notes/:id'` (delete by id)
