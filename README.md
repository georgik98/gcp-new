* Frontend and Backend Applications: Simple Flask applications that interact with each other.
* Docker: Used to containerize the applications, ensuring they run in isolated environments.
* Google App Engine: Hosts the Dockerized applications.
* Terraform Modules:
    * Network Module: Sets up a VPC network and subnet.
    * App Engine Module: Deploys the applications to App Engine.
    * Database Module: Sets up a Cloud SQL instance, database, and user.

* I'm using short-lived credentials for a service account. This is preventing the exposure of gcp-service account keys directly to GitHub.