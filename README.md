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
- Install **psql** on the VM which hosts your Jupyter Notebook (i.e. `sudo apt-get install postgresql-client` on Ubuntu 16.04/18.04 or `sudo yum install https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-redhat10-10-2.noarch.rpm; sudo yum install postgresql10` on Red Hat Enterprise Linux 7 or later).
- On the same VM, install **Pygments Python library**, i.e. `pip install Pygments` and Github **git** utility, i.e. `pip install git`.
- Navigate to the root direcotry of your Jupyter Notebook, i.e. `/usr/local/share/jupyter/notebook_root/` or similar, depending on your Jupyter configuration. Clone the Github repo into the folder, i.e. `git clone https://github.com/cantzakas/gp-demo.git`.
- Open your Jupyter Notebook and navigate to `gp-demo/README.md` file, i.e. on [http://127.0.0.1:9900/tree/gp-demo/README.md](http://127.0.0.1:9900/tree/gp-demo/README.md) or similar, depending on your Jupyter configuration.


