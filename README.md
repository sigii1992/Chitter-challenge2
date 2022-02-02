USER STORIES
```

As a user
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a user
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a user
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a user
So that I can post messages on Chitter as me
I want to sign up for Chitter

As a user
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a user
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

```

### To set up database:

* Connect to `psql`.
* Create the database using the `psql` command `CREATE DATABASE chitter;` and `CREATE DATABASE chitter_test;`.
* Connect to the database using the `psql` command `\c chitter` and `\c chitter_test`.
* Run the query for both databases I have saved in the files `01_create_peeps_table.sql`, `02_create_users_table.sql`, `03_add_foreignKey_to_peeps.sql` in the `db/migrations` folder.