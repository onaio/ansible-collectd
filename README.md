collectd
========

Use this role to install and configure collectd.

Role Variables
--------------

### Required Variables

None currently.
    
### Other Default variables are listed below:

    # General/Graphite
    collectd_graphite_server_ip: "127.0.0.1"
    collectd_graphite_server_port: 2003
    collectd_graphite_server_protocol: "tcp"
    collectd_server_hostname: "localhost"
    collectd_client_org: "ona"
    collectd_scripts: ["graphite", "cpu", "disk", "load", "memory"]
    
    # RabbitMQ
    collectd_rabbitmq_admin_user: "admin"
    collectd_rabbitmq_admin_password: "admin"
    collectd_rabbitmq_management_host: "localhost"
    collectd_rabbitmq_management_port: 15672

Example Playbook
----------------

Install and configure collectd

    - name: Install collectd
      hosts: servers
      vars: 
          collectd_graphite_server_ip: "1.2.3.4"
          collectd_scripts: ["graphite", "cpu", "disk", "load", "memory", "rabbitmq"]
          collectd_rabbitmq_admin_password: "blah"
      roles:
        - role: collectd

License
-------

Apache 2

Authors
-------

Update by [Ona Engineering](https://ona.io)
