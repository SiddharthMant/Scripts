# Remove Line Breaks when copying text from PDF (Linux) :
This bash script removes line breaks when copying text from PDF.

Author: Glutanimate (github.com/glutanimate)
Modifier: Siddharth (github.com/SidMan2001)

# Dependencies :
1. xsel  
`sudo apt-get install xsel`
2. clipnotify (https://github.com/cdown/clipnotify)  
You can use the pre-compiled clipnotify provided in the repository or compile yourself.

**To compile clipnotify yourself :**  
`sudo apt install git build-essential libx11-dev libxtst-dev`  
`git clone https://github.com/cdown/clipnotify.git`  
`cd clipnotify`  
`sudo make`  

# To USE : 
1. Download this repository as zip or copy and paste the script in a text editor and save it as copy_without_linebreaks.sh.
2. Make sure that script and clipnotify (downloaded or precompiled) are in same folder.
3. Open terminal in script's folder and set permission  
`chmod +x "copy_without_linebreaks.sh"`
4. Double click the script or run by entering in terminal :  
`.\copy_without_linebreaks.sh`
