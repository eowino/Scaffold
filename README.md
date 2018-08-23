# Project Scaffold

    - Creates a folder with the name provided by user input
    - Asks user if its a Node project. If yes, runs npm init with the "y" flag
    - Instatiates git
    - Creates a README file and sets the provided name as the title
    - Launches the project with VS Code

To make your script executable from any directory - `cp start-project.sh /usr/local/bin/start-project` 

Run `which start-project` to ensure it worked.

Usage: `start-project my-project-name`