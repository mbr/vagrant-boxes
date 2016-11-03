PostgreSQL 9.4 on Debian Jessie 8
=================================

Contains a minimal installation of PostgreSQL for development, base on `debian/jessie64`.

See https://github.com/mbr/vagrant-boxes for sources. The box is available on Atlas as `mbr/postgres`.


Login
-----

* PostgreSQL role: `vagrant`
* Password: `vagrant`
* Database: `vagrant`

The `vagrant` is not a superuser, but can create databases, users and roles, as well as login. The `vagrant` database is empty.


Forwarded ports
---------------

By default, the PostgreSQL port is only exposed to the host, via `127.0.0.1:5432`. To make it available on all interfaces, add

      config.vm.network "forwarded_port", guest: 5432, host: 5432, host_ip: "127.0.0.1"

to your Vagrantfile.
