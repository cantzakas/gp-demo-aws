# gp-demo

## [Part 1](GP-demo-1.ipynb)
1. Setup 
2. Describe input dataset 
3. Data Loading 
   - `GPLOAD` utility 
   - Other Data Loading Options

## [Part 2](GP-demo-2.ipynb)
4. Basic Table Functions 
   - DESCRIBE Table 
   - Data Distribution across Segments 
   - Table Size and Disk Space Usage 

   - Check for Data Skew 

## [Part 3](GP-demo-3.ipynb)
5. MPP Fundamentals 
6. Partitioning 

## [Part 4](GP-demo-4.ipynb)
7. Compression 
8. Row, Column and Hybrid Storage 
9. External Tables & PXF 


# Download and Execute this demo

## Prerequisites
- A working installation of Jupyter Notebook
- A working Greenplum Database where Jupyter Notebook can connect to and execute commands

## Setup
- Install psql on Jupyter Notebook (i.e. `sudo apt-get install postgresql-client` on Ubuntu 16.04/18.04 or `sudo yum install https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-redhat10-10-2.noarch.rpm; sudo yum install postgresql10` on Red Hat Enterprise Linux 7 or later).
- Install Pygments Python library, i.e. `pip install Pygments`
- Install GIthub `git` utility, i.e. `pip install git`
- Navigate to the root of your Jupyter Notebook, i.e. `/usr/local/share/jupyter/notebook_root/` or similar.
- Clone the Githun repo to the folder above, i.e. `git clone [https://github.com/cantzakas/gp-demo.git](https://github.com/cantzakas/gp-demo.git)`
