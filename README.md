# Greenplum Database Concepts Explained

### Greenplum Database in a nutshell

Pivotal Greenplum Database is a massively parallel processing (MPP) database server based on PostgreSQL open-source technology. By automatically partitioning the data, allowing row- or columnar-oriented table and partition storage and compression and running parallel queries, it allows a cluster of servers to operate as a single database supercomputer. Uniquely geared toward big data analytics, Greenplum Database is powered by the world's most advanced cost-based query optimizer, supports next-generation data warehousing and large-scale analytics processing and delivers high analytical query performance on large data volumes, performing tens or hundreds of times faster than a traditional database.

Greenplum Database runs anywhere; the same software is available on leading public cloud marketplaces - [Amazon Web Services (AWS)](https://pivotal.io/partners/aws/pivotal-greenplum), [Microsoft Azure](https://pivotal.io/partners/microsoft/pivotal-greenplum), and [Google Cloud Platform (GCP)](https://pivotal.io/partners/gcp/pivotal-greenplum), on VMware vSphere and OpenStack private clouds, with container orchestration systems like Kubernetes or on-premises, in either custom or dedicated and purposely-build hardware such as [Greenplum Building Blocks](https://pivotal.io/pivotal-greenplum-building-blocks).

This guide is organised in 4 parts, each explaining a different set of Greenplum Database concepts:
- Part 1: Data Loading,  and the `GPLoad` utility.
- Part 2: Basic Table functions, `DESCRIBE TABLE`, Data Distribution, Table Size and Disk Space Usage, and Data Skew.
- Part 3: MPP Fundamentals, and Data Partitioning.
- Part 4: Table Storage Models and Loading, Table Size, Disk Space Usage and Query Performance Comparison

Each part is delivered in the form of a [Jupyter notebook](https://jupyter.org/). Depending on whether the Greenplum Database  instance requires (or not) an identity file (private key) for public key authentication, you may use one of the two available versions, the one which requires an identity file ([Part 1](AWS-GP-demo-1.ipynb.ipynb), [Part 2](AWS-GP-demo-2.ipynb), [Part 3](AWS-GP-demo-3.ipynb), [Part 4](AWS-GP-demo-4.ipynb)) and the one which doesn't ([Part 1](GP-demo-1.ipynb), [Part 2](GP-demo-2.ipynb), [Part 3](GP-demo-3.ipynb), [Part 4](GP-demo-4.ipynb)).

### Prerequisites & Instructions
- Create a new or connect to an existing Greenplum Database Server. The connection string should be in the following format
  ```
  postgresql://<username>:<password>@<server>:<port>/<database_name>
  ```
- Install a new or connect to an existing Jupyter Server: 
  - Store the Greenplum Database connection information (see above) on a new OS parameter, named `AWSGPDBCONN`, i.e. 
    ```
    $ export AWSGPDBCONN="postgresql://<username>:<password>@<server>:<port>/<database_name>"
    ```
  - Make sure the `sqlalchemy` and `ipython-sql` Python libraries are installed on the Jyputer Server host machine, i.e. 
    ```
    $ pip install sqlalchemy # ORM for databases
    $ pip install ipython-sql # SQL magic function
    ```
    , as well as the PostgreSQL Client Utilities.
  - Clone this repo into a new directory, i.e.
    ```
    $ git clone https://github.com/cantzakas/gp-demo.git $HOME/gp-explained
    ```
  - Start Jupyter server by pointing its root folder to the newly created directory above
    ```
    $ git clone https://github.com/cantzakas/gp-demo.git $HOME/gp-explained
    $ python jupyter-notebook --notebook-dir=$HOME/gp-explained --ip=0.0.0.0 --allow-root
    ```
    
    Upon start, Jupyter will report a message, similar to one below:
    ```
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1838-open.html
    Or copy and paste one of these URLs:
        http://jumpbox:8888/?token=************************************************
     or http://127.0.0.1:8888/?token=************************************************
    ```
    
    Follow any of the URL reported to open Jupyter Server Interface in a browser.
  - If you are planning to connect to a Greenplum Database instance which requires an identity file (private key) for authentication, then copy your private key into a file and store as `$USER/.ssh/aws.pem`. Confirm that you are using the private key file that corresponds to the key pair that you selected when you launched the instance. Your private key file must be protected from read and write operations from any other users, so make sure i.e.
    ```
    $ chmod 0400 $HOME/.ssh/aws.pem
    ```
