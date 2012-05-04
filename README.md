# Simple Benchmark #

You can use this project to compare a clean Rails 3.0 application vs. Rails 3.1 vs. Rails 3.2.

An empty ''User'' model, a migration for adding a users table with a user_name column, and a
migration for populating the users table with **10,000** users is all that was added to each
rails app. These rails apps are setup to use mysql. To run the benchmark yourself, create
the databases ''rails30_simple_benchmark_production'', ''rails31_simple_benchmark_production''
''and rails32_simple_benchmark_production'' in mysql, modify the database.yml file if
needed (username, password, etc.), run migrations, and then execute the following:

Rails 3.0.12:
```sh
cd rails30 && ./script/rails runner load_users.rb
```

Rails 3.1.4: 
```sh
cd rails31 && ./script/rails runner load_users.rb
```

Rails 3.2.3: 
```sh
cd rails32 && ./script/rails runner load_users.rb
```


## Thanks ## 

This benchmark is based on TST Media's simple benchmark, but updated to test different Rails 3.x versions against each other.


