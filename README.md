# Chitter 

This is a simple Twitter clone which allows a user to see all peeps (tweets) without resgistration. In order to create and to post a peep user has to sign up or log in into their account. Users can see who posted a peep and when it was created. Peeps history is printed with the newest peep first. Also, user can log out.
I tried to keep my code as small as possible and tried to follow the Single Responsibility Principle for readability. Also, I used TDD to reduce the number of bugs and improve my code quality.

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
## Technologies used:

- Ruby 3.1.0
- RSpec
- Capybara
- SimpleCov
- Sinatra
- HTML
- Bootstrap
- PostgreSQL

## How to run this app:

1. Clone this repo `git clone https://github.com/sigii1992/Chitter-challenge2.git`
2. `cd Chitter-challenge2`
3. Run `bundle install`
4. Set up database (see instructions bellow)
5. run `rackup`

### To set up database:

* Connect to `psql`.
* Create the database using the `psql` command `CREATE DATABASE chitter;` and `CREATE DATABASE chitter_test;`.
* Connect to the database using the `psql` command `\c chitter` and `\c chitter_test`.
* Run the query for both databases I have saved in the files `01_create_peeps_table.sql`, `02_create_users_table.sql`, `03_add_foreignKey_to_peeps.sql` in the `db/migrations` folder.

### You can run the tests using:

```
bundle install
rspec
```

### Screenshots:

![welcome](https://user-images.githubusercontent.com/81166702/152361829-7bcd7e55-2f44-425a-9a1b-25bfd453f227.png)

![peeps](https://user-images.githubusercontent.com/81166702/152361945-3a0ac818-c5c4-4c07-bbbe-6b9fef94f26e.png)

![login](https://user-images.githubusercontent.com/81166702/152362049-ae4097a1-0c11-4227-947e-03f650d5c05f.png)

![signup](https://user-images.githubusercontent.com/81166702/152362054-e14f87ce-9d4c-4530-a614-edfd9531a85a.png)

![create](https://user-images.githubusercontent.com/81166702/152362044-c7f112b5-736e-4a29-86d8-d13dee021aa5.png)

### Test Coverage:

![Screenshot from 2022-02-03 14-30-40](https://user-images.githubusercontent.com/81166702/152362650-16727bc1-66f2-47d0-9416-a15dd78362f7.png)