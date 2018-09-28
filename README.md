# zipCloudFiles.sh

This script compress all the data on a cloud service (as [CRSR](https://www.coursera.org/) Jupyter Hub) so you can easily download your work.

## From Terminal
* Upload to your cloud service on the main folder
* Make it executable with `chmod +x zipCloudFiles.sh`
* Run it `./zipCloudFiles.sh`
* Download the `.tar.gz` files

## From Jupyter Notebook
Alternatively you can copy and paste the following on a Jupyter cell
```bash
%%bash
cd ~/work # check if this folder actually exists first
wget https://raw.githubusercontent.com/rpanai/Miscellaneous/master/zipCloudFiles.sh
chmod +x zipCloudFiles.sh
./zipCloudFiles.sh
rm zipCloudFiles.sh
```
When the previous process end you can run this on another cell and then click on __download.tar.gz__
```python
import os
import shutil
# The first path could be different in your machine
shutil.move("/home/jovyan/work/download.tar.gz", os.getcwd())
from IPython.display import FileLink
FileLink("download.tar.gz")
```
