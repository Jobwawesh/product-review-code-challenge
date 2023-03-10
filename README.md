# product-review-code-challenge
This is an e-commerce domain that focuses on product reviews. it features a product, the product's users and the reviews users leave for the product. <br>
The relationship between these entities is,  a Product has many Users, a User has many Products’ s, and a Review belongs to a User and to a Product.



## Entity Relationship Diagram(ERD)
This ERD is here to demonstrate the relationship between this project's entities.

<img src="images/ERD.png" width="1000">




## Tools Used
This project was built with the following tools:

- [Ruby ~ v3.1.+](https://www.ruby-lang.org/en/)

## Topics Covered
The following are the concepts covered in this practice session

- Active Record Migrations.
- Active Record Associations.
- Class and Instance Methods.
- Active Record QueryingProject Setup.


Documentation on the Ruby language can be found here: [Ruby Docs](https://docs.ruby-lang.org/en/3.1/)

## Pre-requisites
In order to use this repo you need to have the following installed:

- OS [either: Windows 10+, Linux or MacOS(running on x86 or arm architecture)]
- Ruby - 3.1.+
- SQLite3


## Installation

To use this repo on your machine requires some simple steps

### Alternative One

- Open a terminal / command line interface on your computer
- Clone the repo by using the following:

        git clone https://github.com/Jobwawesh/product-review-code-challenge

- Be patient as it creates a copy on your local machine for you.
- Change directory to the repo folder:

        cd product-review-code-challenge

- (Optional) Open it in ``Visual Studio Code``

        code .

- (Alternate Option) Open it in any editor of your choice.
- Hurray! You are one step closer to being as intelligent as Einstein.

### Alternative Two

- On the top right corner of this page there is a button labelled ``Fork``.
- Click on that button to fork the repo to your own account.
- Take on the process in ``Alternative One`` above.
- Remember to replace your username when cloning.

        git clone https://github.com/your-username-here product-review-code-challenge


# Running the application

Running the application is very straight forward. You can use the following steps to run the app.

- Install required dependencies using bundle

      bundle install

- Generate database tables by running:

      rake db:seed

# Authors
This project was contributed to by:
- [Job Waweru](https://github.com/Jobwawesh/)

# License
The project is licensed under GNU General Public License v3.0