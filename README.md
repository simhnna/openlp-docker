# Docker images for running OpenLP's testsuite

This repository contains DOCKERFILE's for different linux distors,
to be able to run OpenLP's testsuite under different environments.

It can also be used to run the test if you can't do that on your local machine.

There currently are five images:

Tag | System | Information
--- | ------ | -----------
`debian-stable` | Resembles the current debian release | Currently can't run the tests in trunk
`debian-testing` | Resembles the upcoming debian release |
`ubuntu` | Resembles the latest ubuntu release | The tests should always pass here
`ubuntu-lts` | Resembles the latest ubuntu lts release | Currently the same as the `ubuntu` image
`ubuntu-devel` | Resembles the upcoming ubuntu release |

You can grab the images by pulling `docker pull simhnna/openlp:<TAG>`.
If you don't specify a Tag, you will get the `ubuntu` image.

So running `docker pull simhnna/openlp:ubuntu` will grab the same image as running `docker pull simhnna/openlp`

Running `docker run -it simhnna/openlp:ubuntu bash` will start the container and present you with a bash prompt

The images come with bzr preinstalled, so you can start them up, pull openlp and run the tests.
There is a more elegant solution, if you want to test something you have on your local machine.

You can mount a local directory into the container:
`docker run -i -v /path/to/directory/openlp/trunk:/openlp -t simhnna/openlp:ubuntu bash`
Now you will have your directory mounted at `/openlp`. You can change into that folder and run the tests

```
cd /openlp
xvfb-run pytest-3
```

Because the docker image doesn't come with an active display, you need to fake it. That's why we started the test-command with `xvfb-run`

If you find an issue, open an issue (^^) on github. Otherwise you can contact me on freenode under my nick `thelinuxguy`
