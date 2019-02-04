## Docker Node Tutorial

## Step 1.

Run

    docker build .

Proceed to Step 2. if there are no errors.
Warnings and notices are OK for now.

## Step 2.

    docker build -t dockerUsername/projectname .

Example

    docker build -t nataliastanko/node .

Then run

    doker run dockerUsername/projectname

Redirect incoming traffic on local machine via some port to container.

    docker run -p portFromLocalhost:portInsideContainer imageName

Example:

    docker run -p 8080:8080 nataliastanko/node


And go to [localhost:8080](http://localhost:8080/)

You should be able to see 'Hi there' displayed.
