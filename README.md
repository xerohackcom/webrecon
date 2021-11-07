<h1 align="center">
	<br>
	<img src="https://raw.githubusercontent.com/xerohackcom/quick-pentest-scripts/main/github-assets/banner.png" alt="quick-pentest-scripts bhavesh kaul xerohack">
	<br>
	Quick-Pentest-Scripts
</h1>

<p align="center">
	Quick scripts for web recon for your pentesting. Created within 5 mins `\_(^v^)_/`
</p>

## Scripts

- [x] autonuce - just automate nuclei against list of subs
- [x] urlfiles - grep files from allurls
- [x] quredir - get open-redirect endpoints from all urls


### Quick Setup

#### Run the following command in terminal

> git clone https://github.com/xerohackcom/quick-pentest-scripts.git && mv quick-pentest-scripts QPS && rm -rf quick-pentest-scripts && cd QPS

#### Copy scripts to your recon folder
- Copy the scripts to your recon directory. You can use 'cp' command to copy these scripts to your recon folder.

- You reqire the basics of settings up the tools these scripts automate. Copy the tool name & google. Goto their github repos and set them up propoerly. These scripts automate usage. Sit down and relax. Better to run on cloud for heavy tests / full scope recons.

### Usage!

Filenames in bold don't work if the name is changed. Pls change the scripts to accomodate your names

#### assetfinder + httprobe + https-only + autonuce.sh

> assetfinder xyz.com | httprobe | grep -i "https://" | anew <b>subs</b> && bash autonuce.sh

#### assetfinder + httprobe + https-only + gau + urlfiles.sh + quredir.sh (Heavy)

> assetfinder xyz.com | httprobe | grep -i "https://" | anew <b>subs</b> && cat <b>subs</b> | gau -b ttf,woff,svg,png,jpeg,jpg,css,bmp,tiff,woff2,ico,icon,PNG,JPG,BMP,CSS,gif,GIF | grep -i "https://" | anew <b>allurls</b> && bash urlfiles.sh && bash quredir.sh

#### assetfinder + httprobe + https-only + gau + urlfiles.sh + + quredir.sh + autonuce.sh (Very-Heavy - All In One)

> assetfinder xyz.com | httprobe | grep -i "https://" | anew <b>subs</b> && cat <b>subs</b> | gau -b ttf,woff,svg,png,jpeg,jpg,css,bmp,tiff,woff2,ico,icon,PNG,JPG,BMP,CSS,gif,GIF | grep -i "https://" | anew <b>allurls</b> && bash urlfiles.sh && bash quredir.sh && bash autonuce.sh

## Happy Haxing :)
