# JS-Secret-Finder

Tool to automate fetching JS files and finding secrets in them
Uses Tomnomnom's [GF](https://github.com/tomnomnom/gf), [anew](https://github.com/tomnomnom/anew) and GF patterns from various sources compiled [here](https://github.com/ArpitKubadia/Custom-GF-Profiles)

Steps to install:
```
git clone https://github.com/ArpitKubadia/JS-Secret-Finder.git
cd JS\ Secret\ Finder/
chmod +x js_secret_finder.sh
```


## Basic Usage
Pass links to Javascript files from `STDIN`

`waybackurls target | grep ".js" | ./js3_secret_finder.sh`

Automatically uses wget to download all Javascript files, runs all the GF patterns you have in `~/.gf` and outputs to `gf_out.txt` and `cli`

Suggestions and PRs are welcome!
