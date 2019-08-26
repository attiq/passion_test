# Verticals API

* GET /verticals

  $ http :3000/verticals

* POST /verticals

  $ http POST :3000/verticals name=Mozart

* PUT /verticals/:id

  $ http PUT :3000/verticals/1 name=Beethoven

* DELETE /verticals/:id

  $ http DELETE :3000/verticals/1
  

# Categories API

* GET /categories

  $ http :3000/categories

* POST /categories

  $ http POST :3000/categories name=Mozart state=active verticla_id=1

* PUT /categories/:id

  $ http PUT :3000/categories/1 name=Beethoven

* DELETE /categories/:id

  $ http DELETE :3000/categories/1
  
    
# Courses API

* GET /courses

  $ http :3000/courses

* POST /courses

  $ http POST :3000/courses name=Mozart state=active category_id=1 author=Anowa

* PUT /courses/:id

  $ http PUT :3000/courses/1 name=Beethoven

* DELETE /courses/:id

  $ http DELETE :3000/courses/1