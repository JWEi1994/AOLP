# AOLP

  - [Key Features](#key-features)
  - [Installation](#installation)
  - [Credentials](#credentials)
  - [Contact Me](#contact-me)

## Key Features
    
1. Admin Portal                     
2. Course Management                     
3. syllabus               
4. Payment Gateway                   
5. SEO Friendly                
6.  Videos                 
7.  Instructor Credits                        
8.  Instructor Portal                   
9.  Change Settings                     

## Installation
1. Clone the repository using the command "git clone [link]"
2. Run command `composer install`.
3. Create database in MySql.
4. Change `.env.example` to `.env` and configure the `.env` file.
    ```
    DB_CONNECTION=mysql
    DB_HOST=
    DB_PORT=
    DB_DATABASE=
    DB_USERNAME=
    DB_PASSWORD=
    ```
5. Run command `php artisan migrate`.
6. Import the fyp.sql file in [database](database/sql/fyp.sql) folder.
7. Run command 
    ```
    $php artisan key:generate
    $php artisan storage:link
    ```

## Credentials

|    Role       |        Email Address        |   Password    |
| ------------- | ---------------------  | ------------- |
|    Admin      | admin@aolp.com       |    secret     |
|    Instructor | instructor@aolp.com  |    secret     |
|    Student    | student@aolp.com     |    secret     |