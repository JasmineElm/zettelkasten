# zettelkasten


A bash script that helps maintain a
[zettelkasten](https://en.wikipedia.org/wiki/Zettelkasten).

I use this script alongside [Obsidian](https://obsidian.md/); sometimes it's
faster to use the commandline for quick notes on the go, particularly with termux.
## Pre-requisites

+ curl
+ [motivate](https://github.com/mubaris/motivate)
+ [prettier](https://github.com/prettier/prettier)
+ [rclone](https://github.com/rclone/rclone)
+ [pngquant](https://github.com/kornelski/pngquant)
+ [jpgoptim](https://github.com/tjko/jpegoptim)

## Usage

    zetl  [command] [options]

| short flag | long flag | description                                                        |
| ---------- | --------- | ------------------------------------------------------------------ |
| -h         | --help    | show help                                                          |
| -d         | --daily   | create a daily note                                                |
| -j         | --journal | create a journal note                                              |
| -n         | --note    | create a note everything after the flag is the title and card name |
| -k         | --kanban  | add a task to the kanban board                                     |
| -c         | --clean   | clean up the zettelkasten                                          |
| -s         | --sync    | push zettelkasten to git                                           |
| -t         | --today   | edit today's _daily_ note                                          |
| -b         | --backup  | backup the zettelkasten to cloud                                   |
| -e         | --emotion | add an emotion to _daily_ note                                     |

## TODO:

- [x] externalise config
- [x] better emotion tracking
- [x] sample, example cron
- [ ] install notes
- [ ] better clearing 
  - [ ] identify duplicates
  - [ ] identify orphans
