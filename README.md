## Current Scripts

- autonuce.sh

## autonuce.sh

Just place it in your working recon directory and run it against a text file containing subdomains. Name the subdomains file as 'subs' (without any extensions or any other name).

**Usage with assetfinder**

`assetfinder example.com | httprobe | grep -i "https://" | anew subs && bash autonuce.sh`

**What it does?**

- Creates a folder in your current working directory named "nuce"
  
- Runs nuclei templates one by one
  
- Displays all file created by nuclei
