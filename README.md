# Steps

1. `docker build --no-cache --progress plain --rm .`


Console output:
```
#10 [6/6] RUN yarn nx graph --verbose --focus @nx-graph-problem/parent --file ./graph.json
#10 0.441 yarn run v1.22.19
#10 0.466 $ /app/node_modules/.bin/nx graph --verbose --focus @nx-graph-problem/parent --file ./graph.json
#10 11.27 nx graph
#10 11.27 
#10 11.27 Graph dependencies within workspace
#10 11.27 
#10 11.27 Run command using --base=[SHA1] (affected by the committed, uncommitted and untracked changes):
#10 11.27   --base  Base of the current branch (usually main)  [string]
#10 11.27 
#10 11.27 or using --base=[SHA1] --head=[SHA2] (affected by the committed changes):
#10 11.27   --base  Base of the current branch (usually main)  [string]
#10 11.27   --head  Latest commit of the current branch (usually HEAD)  [string]
#10 11.27 
#10 11.27 or using:
#10 11.27   --files        Change the way Nx is calculating the affected command by providing directly changed files, list of files delimited by commas or spaces  [string]
#10 11.27   --uncommitted  Uncommitted changes  [boolean]
#10 11.27   --untracked    Untracked changes  [boolean]
#10 11.27 
#10 11.27 Options:
#10 11.27   --help           Show help  [boolean]
#10 11.27   --version        Show version number  [boolean]
#10 11.27   --file           Output file (e.g. --file=output.json or --file=dep-graph.html).  [string]
#10 11.27   --print          Print the project graph to stdout in the terminal.  [boolean]
#10 11.27   --view           Choose whether to view the projects or task graph  [string] [choices: "projects", "tasks"] [default: "projects"]
#10 11.27   --targets        The target to show tasks for in the task graph  [string]
#10 11.27   --focus          Use to show the project graph for a particular project and every node that is either an ancestor or a descendant.  [string]
#10 11.27   --exclude        Exclude certain projects from being processed  [string]
#10 11.27   --groupByFolder  Group projects by folder in the project graph  [boolean]
#10 11.27   --host           Bind the project graph server to a specific ip address.  [string]
#10 11.27   --port           Bind the project graph server to a specific port.  [number]
#10 11.27   --watch          Watch for changes to project graph and update in-browser  [boolean] [default: true]
#10 11.27   --open           Open the project graph in the browser.  [boolean] [default: true]
#10 11.27   --verbose        Prints additional information about the commands (e.g., stack traces)  [boolean]
#10 11.27   --affected       Highlight affected projects  [boolean]
#10 11.27 
#10 11.27 Find more information and examples at https://nx.dev/nx/dep-graph
#10 11.27 
#10 11.27 TypeError: Cannot read properties of undefined (reading 'split')
#10 11.27     at handleProjectGraphError (/app/node_modules/nx/src/project-graph/project-graph.js:158:37)
#10 11.27     at Object.generateGraph (/app/node_modules/nx/src/command-line/graph/graph.js:179:57)
#10 11.27     at process.processTicksAndRejections (node:internal/process/task_queues:95:5)
#10 11.27     at async Object.handler (/app/node_modules/nx/src/command-line/graph/command-object.js:21:30)
#10 11.29 error Command failed with exit code 1.
#10 11.29 info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
#10 ERROR: process "/bin/sh -c yarn nx graph --verbose --focus @nx-graph-problem/parent --file ./graph.json" did not complete successfully: exit code: 1
------
 > [6/6] RUN yarn nx graph --verbose --focus @nx-graph-problem/parent --file ./graph.json:
11.27 
11.27 Find more information and examples at https://nx.dev/nx/dep-graph
11.27 
11.27 TypeError: Cannot read properties of undefined (reading 'split')
11.27     at handleProjectGraphError (/app/node_modules/nx/src/project-graph/project-graph.js:158:37)
11.27     at Object.generateGraph (/app/node_modules/nx/src/command-line/graph/graph.js:179:57)
11.27     at process.processTicksAndRejections (node:internal/process/task_queues:95:5)
11.27     at async Object.handler (/app/node_modules/nx/src/command-line/graph/command-object.js:21:30)
11.29 error Command failed with exit code 1.
11.29 info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
------
Dockerfile:8
--------------------
   6 |     RUN yarn install
   7 |     RUN yarn nx run --verbose --batch @nx-graph-problem/parent:build
   8 | >>> RUN yarn nx graph --verbose --focus @nx-graph-problem/parent --file ./graph.json
   9 |     
  10 |     ENTRYPOINT ["top", "-b"]
--------------------
ERROR: failed to solve: process "/bin/sh -c yarn nx graph --verbose --focus @nx-graph-problem/parent --file ./graph.json" did not complete successfully: exit code: 1
```
