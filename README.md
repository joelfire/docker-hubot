# docker-hubot

Creates and runs a hubot docker image.
Allows for easy addition of new scripts, both included and your own, without having to rebuild, just restart.

Usage:
Create a 'data' directory in this dir. In that create the following:
* hubot-scripts.json (your scripts file)
* scripts (dir to include any of your own scripts)
* env.sh (export and env vars your scripts will need)

```bash
./build.sh
```
Now whenever you want to run or restart,
```bash
./run.sh
```

Note that hubot is named 'harry' and runs on slack by default.
