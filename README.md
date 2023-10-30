# WIK_DPS_TP01

After cloning the project, you'll have to set your environment variable 'PING_LISTEN_PORT' using ```export PING_LISTEN_PORT={port}``` on Mac/Linux.

Then, at the project's root, you can open a terminal and run ```npx ts-node index.ts``` to launch the project.

In the terminal, you'll see where your application is listening, it should match the 'PING_LISTEN_PORT' variable you just set.

Now, you can open a browser and search for ```http://localhost:{PING_LISTEN_PORT}/ping```, or open a terminal and write ```curl localhost:{PING_LISTEN_PORT}/ping -v```.

You will see the headers of your request on your browser's page or in your terminal.

If the route is wrong you will get a simple response with 404 status code. For any other error, you will receive a response with 500 status code.


# WIK_DPS_TP02

Once Docker launched, build the image single stage image with ```docker build -t tp2 .``` and run it with ```docker run -p 127.0.0.1:8000:8000 tp2```.

You can then check if it's working with ```curl localhost:8000/ping -v```, and see the vulnerabilities with ```docker scout cves local://tp2:latest```.

For the multi stage image, build it with ```docker build -t tp2_multi -f multi.dockerfile .```, and run it with ```docker run -p 127.0.0.1:8000:8000 tp2_multi```.

You can also check if it works with the same command, ```curl localhost:8000/ping -v```.


# WIK_DPS_TP03

Once Docker launched, build up your containers with ```docker compose up --build```. You can now check if your loadbalancer is working correctly by spamming ```curl localhost:8080/ping -v``` in your terminal. The container treating your request should be different each time.


