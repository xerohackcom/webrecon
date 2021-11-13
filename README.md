<h1 align="center">
	<br>
	<img src="https://raw.githubusercontent.com/xerohackcom/quick-pentest-scripts/main/github-assets/banner.png" alt="quick-pentest-scripts bhavesh kaul xerohack">
	<br>
	webrecon
</h1>

<p align="center">
	Some useful shell scripts to automate web recon
</p>

## Scripts

- [x] autonuce - just automate nuclei against list of subs
- [x] urlfiles - grep files from allurls
- [x] quredir - get open-redirect endpoints from all urls


### Quick Setup

#### Run the following command in terminal

> git clone --depth=1 https://github.com/xerohackcom/webrecon.git && mv webrecon XHW && rm -rf webrecon && cd XHW && rm -rf github-assets && ll

#### Copy scripts to your recon folder
- Copy the scripts to your recon directory. You can use 'cp' command to copy these scripts to your recon folder.

- You reqire the basics of settings up the tools these scripts automate. Copy the tool name & google. Goto their github repos and set them up propoerly. These scripts automate usage. Sit down and relax. Better to run on cloud for heavy tests / full scope recons.

### Usage!

Filenames in bold don't work if the name is changed. Pls change the scripts to accomodate your names

#### assetfinder + httpx + https-only + autonuce.sh

> assetfinder xyz.com | httpx | grep -i "https://" | anew <b>subs</b> && bash autonuce.sh

#### assetfinder + httpx + https-only + gauplus + urlfiles.sh + quredir.sh (Heavy)

> assetfinder xyz.com | httpx | grep -i "https://" | anew <b>subs</b> && cat <b>subs</b> | gauplus -b ttf,woff,svg,png,jpeg,jpg,css,bmp,tiff,woff2,ico,icon,PNG,JPG,BMP,CSS,gif,GIF | grep -i "https://" | anew <b>allurls</b> && bash urlfiles.sh && bash quredir.sh

#### assetfinder + httpx + https-only + gauplus + urlfiles.sh + + quredir.sh + autonuce.sh (Very-Heavy - All In One)

> assetfinder xyz.com | httpx | grep -i "https://" | anew <b>subs</b> && cat <b>subs</b> | gauplus -b ttf,woff,svg,png,jpeg,jpg,css,bmp,tiff,woff2,ico,icon,PNG,JPG,BMP,CSS,gif,GIF | grep -i "https://" | anew <b>allurls</b> && bash urlfiles.sh && bash quredir.sh && bash autonuce.sh

## Happy Haxing :)
