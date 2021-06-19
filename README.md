<h1 align="center">
	<br>
	<img src="https://raw.githubusercontent.com/xerohackcom/banner.png" alt="quick-pentest-scripts banner xerohack bhavesh kaul">
	<br>
	Quick-Pentest-Scripts
</h1>

<p align="center">
	Quick, Simple & Working quick scripts for pentesting. Created within 5 mins `\_(^v^)_/`
</p>

## Scripts

- [x] autonuce - just automate nuclei against list of subs
- [x] urlfiles - grep files from allurls
- [x] quredir - get open-redirect endpoints from all urls


### Quick Setup

#### Run the following command in terminal

> git clone https://github.com/xerohackcom/quick-pentest-scripts.git && mv quick-pentest-scripts QPS && rm -rf quick-pentest-scripts && cd QPS

- Copy the scripts to your recon directory (you can easily copy paste or use cp command)

### Usage!

Filenames in bold don't work if the name is changed. Pls change the scripts to accomodate your names

#### assetfinder + httprobe + https-only + autonuce.sh

> assetfinder xyz.com | httprobe | grep -i "https://" | anew <b>subs</b> && bash autonuce.sh

#### assetfinder + httprobe + https-only + gau + urlfiles.sh + urlredir.sh (Heavy)

> assetfinder xyz.com | httprobe | grep -i "https://" | anew <b>subs</b> && cat <b>subs</b> | gau -b ttf,woff,svg,png,jpeg,jpg,css,bmp,tiff,woff2,ico,icon,PNG,JPG,BMP,CSS,gif,GIF | grep -i "https://" | anew <b>allurls</b> && bash urlfiles.sh && bash urlredir.sh

#### assetfinder + httprobe + https-only + gau + urlfiles.sh + + urlredir.sh + autonuce.sh (Very-Heavy - All In One)

> assetfinder xyz.com | httprobe | grep -i "https://" | anew <b>subs</b> && cat <b>subs</b> | gau -b ttf,woff,svg,png,jpeg,jpg,css,bmp,tiff,woff2,ico,icon,PNG,JPG,BMP,CSS,gif,GIF | grep -i "https://" | anew <b>allurls</b> && bash urlfiles.sh && bash urlredir.sh && bash autonuce.sh

## Happy Haxing :)