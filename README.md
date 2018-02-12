collectd
========

Use this role to install and configure collectd.

Role Variables
--------------

### Required Variables

None currently.
    
### Other Default variables are listed below:

    # General/Graphite
    collectd_version: "5.5.*"
    # if collectd_server_mode is true server specific tasks like copying the main collectd config
    # will be performed. Otherwise currently it's just the scripts in collectd_scripts will be copied
    collectd_server_mode: false
    collectd_graphite_server_ip: "127.0.0.1"
    collectd_graphite_server_port: 2003
    collectd_graphite_server_protocol: "tcp"
    collectd_server_hostname: "localhost"
    collectd_server_owner: "ona"
    collectd_server_type: "generic"
    collectd_scripts: []
    
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
