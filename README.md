# legal-aid
A web app for law firms built with Ruby on Rails


for Jquery assessment:

Must render one show page and one index page via 
jQuery and an Active Model Serialization JSON Backend:

billing entries - i.e. 5min phone_cool...1.5 hours appearsence ect ect?

billing could be revealed by jquery on the cases show page. 
then if you wanted to see more than just the totals(by month?)...
you could use the api to render the billing details.
cases?
clients?



Must use your Rails api to create a resource 
and render the response without a page refresh.

notes?(this is perfect for notes, but i'm worried about how 
complex it will be using my join table


The rails API must reveal at least one has-many relationship in the 
JSON that is then rendered to the page:

look at the serializer lesson's reguarding authors and posts.

still perfect for notes (I think)


Must have at least one link that loads, 
or updates a resource without reloading the page.

notes


Must translate the JSON responses into Javascript Model Objects. 
The Model Objects must have at least one method on the prototype. 
Formatters work really well for this.

model objs would work well for cases too




can i use these to fulfill any requirements:

keep track of tolling of expenses by case.(by receipts with scans)

way to see how much of a retainer has been paid(hide from all but admin)



someday:

use bootstrap to fix columns?(will this over write my current css?)

owners and admins can delete notes => 
this is working but not with the authorize @record method. 
not sure why?



maybe: 

automatic file number gen

SOL pop ups?

link up a way to access files (pdf)

mileage - user by day for tax

keep track of tolling of expenses by case.(by receipts with scans)

billing entries - i.e. 5min phone_cool...1.5 hours appearsence ect ect?

Think about css?(edit responsive css as well) => fine for now, but would need polishing for production.

add search for cases(index and caption) and clients(someday)
add fee schedule calc(someday)

templates
