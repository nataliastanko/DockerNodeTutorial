## Docker NodeJS Tutorial

## Step 1.

### Node server setup & server code

Create ```package.json``` file.
Create ```index.js``` file.
Create ```Dockerfile``` file.

Run

    docker build .

Proceed to Step 2. if there are no errors.
Warnings (npm WARN) and notices (npm notice) are OK for now.

## Step 2.

Tag the image to not to have to work with IDs.

    docker build -t dockerUsername/projectname .

Then run

    doker run dockerUsername/projectname

Redirect incoming traffic on local machine via some port to container.

    docker run -p portFromLocalhostWhereWeMapFromIncomingRequests:portInsideTheContainer imageName

dockerUsername/projectname is the imageName.

Example:

    docker run -p 3000:6000 dockerUsername/projectname

And go to [localhost:3000](http://localhost:3000/)

You should be able to see ```Listening on port 6000 inside the container``` displayed.

But after editing index.js (changing the listening port to 7000 for example or editing some text displayed), changes are not applied in project directory in the container. See for yourself:

    docker run -it dockerUsername/projectname sh

So we have to rebuild and relaunch the container:

    docker build -t dockerUsername/projectname .
    docker run -p 3000:7000 dockerUsername/projectname

You should se ```Listening on port 7000 inside the container``` printed as a log in running container.
Go to [localhost:3000](http://localhost:3000/) to see changes.

## Step 3.

Check project directory

    docker run -it dockerUsername/projectname sh

It is better to place app files somewhere else than root directory ```/```.
After setting ```WORKDIR```, we have to rebuild and relaunch again.

    docker build -t dockerUsername/projectname .
    docker run -p 3000:7000 dockerUsername/projectname

***

***

***

* Based on [udemy course](https://www.udemy.com/docker-and-kubernetes-the-complete-guide/).
