## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![alt text](https://github.com/zakchow/elk_project/blob/main/Network_security_diagaram.PNG)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the .YML file may be used to install only certain pieces of it, such as Filebeat.

  [Playbooks](https://github.com/zakchow/elk_project/tree/main/ansible/playbooks)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

> What aspect of security do load balancers protect?

Load balancers protect Azure resources within virtual networks and mmonitor and log any conifguration and traffic of virtual networks.

> What is the advantage of a jump box?

An advantage of the JumpBox is that it reduces the size of any potential attack surface. The jumpbox is used to improve security by first allowing admins to connect to it before launching any administrative task.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.

> What does Filebeat watch for?

Filebeat watches for log files or locations that are specified and log files.

> What does Metricbeat record?

Metricbeat records metricbeat records metrics and statistics and helps to monitor servers by collecting those metrics from the system and services running on that server

The configuration details of each machine may be found below.


| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web-1    | Server   | 10.0.0.5   | Linux            |
| Web-2    | Server   | 10.0.0.6   | Linux            |
| Elk      | Server   | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jumbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
 **Private IP**

Machines within the network can only be accessed by SSH.

> Which machine did you allow to access your ELK VM? What was its IP address?

The Jumpbox was allowed to access the Elk VM via Public IP address.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | 
|----------|---------------------|
| Jump Box | Yes                 |              
| Web-1    | No                  |                      
| Web-2    | No                  |                      
| Elk      | Yes                 |                     

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it
provides a framework for fully independent or interdependent collections of variables, tasks, files, templates, and modules.

The playbook implements the following tasks:
  1. Installs Docker.io and pip3
  2. Increases the Virtual Machine's memory
  3. Downloads and oconfigures the ELK docker container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1 with IP 1.0.0.5
- Web-2 with IP 1.0.0.6

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
