#Teacher's Book of Parents

## Description

This is a rails app styled with Bootstrap. It can be used by teachers to record parent contact information and side notes. All teachers are authenticated by email and password. They are only able to see parents they have entered. New Teachers must be added using table inserts.

##Setup Localhost...
* Clone repository to your computer.
* In terminal run...
    * `bundle install`
    * `bin/rake db:migrate`
    * `bin/rake db:seed`
    * `bin/rails server`
    * Open your browser and navigate to `localhost:3000`.
    * Login using a test id ekrabappel@example.com/qwe00iop
    * Click button to add new parents or you can update teachers email, password, or logout.
