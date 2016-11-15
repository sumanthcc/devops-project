# devops-project
#Initially configure your chef-server chef-workstation and chef-client 
#Include your recipe to install Nginx server. You can access it from the above files.
#The next step is to create the SSL certificates. You do that by giving the following command
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
#fill the details when prompted.

#the next step is to edit the /etc/nginx/sites-available/default file to redirect all our request to HTTPS. This can be done by editing that file as the "sites" file in the cookbook files.
#Edit the index.html file with the html code you have.
#you can use chef to do all these, so that you can scale your application on more nodes.
#you can have access to the demo page I created which transfers all requests to the HTTPS port below.
https://ec2-54-152-153-79.compute-1.amazonaws.com/
