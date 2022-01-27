USER STORIES
```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```

### To set up database:

* Connect to `psql`.
* Create the database using the `psql` command `CREATE DATABASE chitter;` and `CREATE DATABASE chitter_test;`.
* Connect to the database using the `psql` command `\c chitter` and `\c chitter_test`.
* Run the query for both databases I have saved in the file `01_create_peeps_table.sql` in the `db/migrations` folder.