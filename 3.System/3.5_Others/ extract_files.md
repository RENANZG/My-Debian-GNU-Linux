## Command line options for extracting files with `tar`
The [`tar`](https://man7.org/linux/man-pages/man1/tar.1.html) command line utility is the _de facto_ standard in Linux for compressing/uncompressing files. Here are the most common command line options.
| Option | Long Option | Description |
| :----- | :---------- | :---------- |
| `-x`   | `--extract` | Extract files from archive. |
| `-f`   | `--file`    | Specify name of file to extract. |
| `-v`   | `--verbose` | List all files processed and result for each. |
| `-j`   | `--bzip2`   | Extract `bzip2` compressed file. |
| `-J`   | `--xz`      | Extract `xz` compressed file. |
| `-z`   | `--gunzip`  | Extract `gzip` compressed file. |
| `-Z`   | `--uncompress` | Extract `zip` compressed file. |
| N/A    | `--zstd`    | Extract `zstd` compressed file. |



## Extract files from various types of archives at command prompt
In most cases, I prefer to use the [`dtrx`](https://github.com/dtrx-py/dtrx) tool to extract archives. It automatically determines the archive type and extracts the file based on the determined type. However, if you are on a machine that doesn't have `dtrx`, it's useful to know the common commands to extract most archives.

| Extension | Extract Command | Notes/Comments |
| :-------- | :-------------- | :------------- |
| `tar.gz`  | `tar xzf archive.tar.gz`       |                |
| `tgz`     | `tar xzf archive.tgz`       |                |
| `tar`     | `tar xf archive.tar`        |                |
| `tar.bz2` | `tar xjf archive.tar.bz2`       |                |
| `tbz2`    | `tar xjf archive.tbz2`       |                |
| `tar.xz`  | `tar xf archive.tar.xz`        | `tar` will auto-detect compression. |
| `xz`      | `unxz archive.xz`          | [xz](https://tukaani.org/xz/format.html) format |
| `zip`     | `unzip archive.zip`         |                |
| `tar.zst` | `tar -I=unzstd xf archive.tar.zst` |              |
| `zst`     | `unzstd archive.zst`        | [Zstandard](https://facebook.github.io/zstd/) format |
| `Z`       | `uncompress archive.Z`    |                |
| `7z`      | `7z x archive.7z`          | [7-Zip](https://7-zip.org/) format |

Notes:
- The [`tar`](https://man7.org/linux/man-pages/man1/tar.1.html) command can include the `v` option for `verbose` for additional details. For example, `tar xzvf` for verbose option when extracting a `tar.gz` archive.
- These commands will extract the files in the **current** directory. To extract using `tar` into a specific directory use the `-C` option with the desired fully-qualified path. For example, `tar xzf file.tar.gz -C ~/Documents`.
- Typically, `tar` will auto-detect the compression format, if any, used in an archive, so you can usually simply use `tar xf` on most any `tar` archive and it will extract it properly. (The `zstd` format is one notable exception.)

[Reference1](https://linuxopsys.com/topics/tar-command-in-linux)  
[Reference2](https://linuxize.com/post/how-to-create-and-extract-archives-using-the-tar-command-in-linux/)

### An `extract()` shell function for decompressing archives
Using the rules specified above, we can build a bash shell function to extract most of the common archives in Linux. Just add this function to your `.bashrc` or `.bash_profile` configure file in your home directory. And ensure that you have the appropriate decompression tools installed; most Linux distributions already have them. Here are the commands to install them on a few common Linux distributions.
- Ubuntu/Debian/Linux Mint
```bash
sudo apt install -y zlib1g bzip2 zstd xz-utils 7zip unrar-free tar tarlz gzip
```
- CentOS/Redhat Linux/Fedora
```bash
sudo dnf install
```
- Archlinux/EndeavourOS
```bash
sudo pacman -
```

```bash
# Extract common archive files by file extension
function extract() {
    if [ -f $1 ] ; then
        case $1 in
#            *.tar.gz|*.tgz)     tar xzf $1          ;;
#            *.tar|*.tar.xz)     tar xf $1           ;;
#            *.tar.bz2|*.tbz2)   tar xjf $1          ;;
#            *.xz)               unxz $1             ;;
#            *.zip)              unzip $1            ;;
#            *.Z)                uncompress $1       ;;
#            *.tar.zst)          tar -I=unzstd xf $1 ;;
#            *.zst)              unzstd $1           ;;
#            *.7z)               7z x $1             ;;
        esac
    else
        echo "'$1' is not valid archive file."
    fi
}
```
