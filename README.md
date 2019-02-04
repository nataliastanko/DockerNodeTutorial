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

You can change the port for incoming requests very easily, example:

    docker run -p 5000:8080 nataliastanko/node

And go to [localhost:5000](http://localhost:5000/)

Same with a port inside a container, example:

    docker run -p 5000:6000 nataliastanko/node

But after editing index.js (changing the port to 6000) we have to rebuild (with tag) and relaunch container:

    docker build -t nataliastanko/node .
    docker run -p 5000:6000 nataliastanko/node

You should se ```Listening on port 6000``` printed as a log in running container.
Go to [localhost:5000](http://localhost:5000/) to see changes.

***

***

***

* Based on [udemy course](https://www.udemy.com/docker-and-kubernetes-the-complete-guide/).
