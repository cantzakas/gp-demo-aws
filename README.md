# Greenplum Database Concepts Explained

### Greenplum Database in a nutshell

Pivotal Greenplum Database is a massively parallel processing (MPP) database server based on PostgreSQL open-source technology. By automatically partitioning the data, allowing row- or columnar-oriented table and partition storage and compression and running parallel queries, it allows a cluster of servers to operate as a single database supercomputer. Uniquely geared toward big data analytics, Greenplum Database is powered by the world's most advanced cost-based query optimizer, supports next-generation data warehousing and large-scale analytics processing and delivers high analytical query performance on large data volumes, performing tens or hundreds of times faster than a traditional database.

Greenplum Database runs anywhere; the same software is available on leading public cloud marketplaces - [Amazon Web Services (AWS)](https://pivotal.io/partners/aws/pivotal-greenplum), [Microsoft Azure](https://pivotal.io/partners/microsoft/pivotal-greenplum), and [Google Cloud Platform (GCP)](https://pivotal.io/partners/gcp/pivotal-greenplum), on VMware vSphere and OpenStack private clouds, with container orchestration systems like Kubernetes or on-premises, in either custom or dedicated and purposely-build hardware such as [Greenplum Building Blocks](https://pivotal.io/pivotal-greenplum-building-blocks).

This guide is organised in 4 main parts each explaining a different set of Greenplum Database concepts, and an additional part on PostGIS on Greenplum Database; all parts are delivered in the form of a [Jupyter Notebook](https://jupyter.org):

- [Part 1](AWS-GP-demo-1.ipynb): Data Loading,  and the `GPLoad` utility.
- [Part 2](AWS-GP-demo-2.ipynb): Basic Table functions, `DESCRIBE TABLE`, Data Distribution, Table Size and Disk Space Usage, and Data Skew.
- [Part 3](AWS-GP-demo-3.ipynb): MPP Fundamentals, and Data Partitioning.
- [Part 4](AWS-GP-demo-4.ipynb): Table Storage Models and Loading, Table Size, Disk Space Usage and Query Performance Comparison.
- [Part 5](GP-PostGIS-Demo.ipynb): PostGIS.

### Setup instructions
- To execute properly, the Jupyter notebooks assume there is an active Greenplum Database Server they can connect to, i.e. Greenplum Database available on Amazon Web Services (AWS). For information on how to create a Greenplum Database server cluster on Amazon Web Services, feel free to check this [YouTube video; Pivotal Greenplum on AWS Marketplace July 2019 Update](https://www.youtube.com/watch?v=P2qVgaGpfFQ).
- Install a new or connect to an existing Jupyter Server host: 
  - Create a new OS variable, named `AWSGPDBCONN`, and store the Greenplum Database connection information, i.e. 
    ```
    $ export AWSGPDBCONN="postgresql://<username>:<password>@<server>:<port>/<database_name>"
    ```
  - Make sure the `sqlalchemy` and `ipython-sql` Python libraries are installed, i.e. 
    ```
    $ pip install sqlalchemy # ORM for databases
    $ pip install ipython-sql # SQL magic function
    ```
  - Install the PostgreSQL Client Utilities.
  - Clone this repo into a new directory, i.e.
    ```
    $ git clone https://github.com/cantzakas/gp-demo-aws.git $HOME/gp-explained
    ```
  - Start Jupyter server by pointing its root folder to the newly created directory above
    ```
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
  - Connecting to a Greenplum Database cluster on Amazon Web Services (AWS) requires an identity file (private key) for authentication. Copy into a file the private key that corresponds to the key pair that you selected when you launched the instance on Amazon Web Services and store this as `$USER/.ssh/aws.pem`. Your private key file must be protected from read and write operations from any other users, so make sure to set the appropriate priviledges, i.e.
    ```
    $ chmod 0400 $HOME/.ssh/aws.pem
    ```
