# zipCloudFiles.sh

This script compress all the data on a cloud service (as [CRSR](https://www.coursera.org/) Jupyter Hub) so you can easily download your work.

** Usage**

* Upload to your cloud service on the main folder
* Make it executable with `chmod +x zipCloudFiles.sh`
* Run it `./zipCloudFiles.sh`
* Download the `.tar.gz` files

Alternatively you can copy and paste the following on a Jupyter cell
```bash
%%bash
cd ~/work
wget https://raw.githubusercontent.com/rpanai/Miscellaneous/master/zipCloudFiles.sh
chmod +x zipCloudFiles.sh
./zipCloudFiles.sh
```
