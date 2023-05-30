To build the site, run the following command in PowerShell

`docker build -t sun_qian_coding_assignment11:dev .`

To start the site, run the following command in PowerShell

`docker run -it --rm -v ${PWD}:/sun_qian_site -v /sun_qian_site/node_modules -p 7775:3000 -e CHOKIDAR_USEPOLLING=true sun_qian_coding_assignment11:dev`

Then you can visit the site with the following URL

`http://localhost:7775`