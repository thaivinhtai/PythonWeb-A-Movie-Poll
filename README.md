# Basic Web Server: A Movie Poll

### Intro

Recently, the concept of container virtualization is mentioned a lot. And Docker is also emerging as a phenomenon and used by a lot of people.


### Use docker to develop Django

Typically, when developing Django applications in particular and Python applications in general, we often use the virtual environment of Python (virtualenv or venv). The purpose of this is to create an isolated environment for the application. Separate it from the rest of the system, to ensure that our application development does not affect the system at all.

However, Web applications that use Django or any other framework, it's not enough to use virtual environments for Python alone. Because in addition to the necessary Python packages, there are many other components, such as databases (PostgreSQL, MySQL, ...), cache (memcached, Redis, ...), etc. Many times, we want to configure the production environment to test it before officially running the application, without having the conditions or the need to rent a real server, we need other solutions.

The usual solution is to use virtual machines. We can use programs like VirtualBox or VMWare and install on a personal computer a Linux virtual machine as much as the server. And we will also log in there, get the code for installing and configuring everything to make our Web site work.

The problem is, such a virtual machine will take up a lot of system resources. And with a personal computer, when it is possible to run a virtual machine, the real machine can't do anything else. Also, during the development process, every time we want to update the new code, we have to do a decent job of pushing code, then login to the virtual machine and pull the code back.

Another solution is that Vagrant can solve the code update problem on this virtual machine. It has a good mechanism to allow the project file and folder system to be synchronized into the virtual machine, so the code will be updated almost immediately. However, Vagrant also uses a third-party service such as VirtualBox to run a virtual machine, so the problem of consuming system resources is still unresolved.

Recently, Docker emerged and was supposed to be able to solve both problems. If that's the case, then we can safely use Docker in our work. We will try to use Docker to see what it can do.

### Deploy "The Intek Movie Friday Night Poll with Basic Web Server" project:

#### To deploy the project:
    ``` sudo sh install.sh
    ```

#### To clean-up:
    ``` sudo sh clean_up.sh
    ```

#### Use the polls app:

username: admin
password: admin
polls/homepage url: http://127.0.0.1:8000
