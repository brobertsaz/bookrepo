## Setup
1. Clone the repo:
```
git clone git@github.com:brobertsaz/bookrepo.git
```
2. cd into the repo:
```
cd bookrepo
```
3. It should prompt to install ruby if you have RVM or RBENV installed
$. Install gems:
```
bundle
```
3. Provided that you have PostgreSQL installed and do not require a password locally, you can run:
```
rails db:setup
```
4. Start the server and go to localhost:3000
```
rails s
```
5. There is a link for teacher sign in
```
email: admin.teacher@test.com
password: password
```





## Requirements
- Publishing house ‘XYZ’ has an online book repository. It wants to create an application with a subscription feature to provide users access to the library.
- Build an RoR app for the following -

1. Create a Subscription model with options for
   1 user
   10 users
   50 Users
   100 Users
2. An Account needs to be created to complete a Subscription and can have only 1 Subscription assigned at a time.
3. An Account can have 1 or multiple schools belonging to it. The subscription limit spans across all schools in the Account.
4. Schools have two types of Users - Teacher / Student
5. Teachers and Students can belong to only one School at a time.
6. A Teacher can also be assigned an Administrator role for the Account.
7. The admin can perform following functions at the account level
    * Create new schools/students/teachers.
    * Edit Schools/Students/Teachers
    * Delete Schools/Students/Teachers
    * A school should always belong to 1 Account.
    * A Student/Teacher should always belong to 1 School
    * An admin can assign another teacher as an Admin
    * The admin should be able to assign Students to Teachers.

## Instructions

- Build a simple Rails view UI for the above admin functions
- Show lists of Schools/Teachers/Students with drilldown
- Provide a search feature to Search schools/teachers/students
- All models and public methods will be covered through RSpec
