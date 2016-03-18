hebbo.github.io
===============


Development
===========


`docker run -it -p $(docker-machine ip default):4000:4000/tcp -v $PWD:/usr/src/myapp -w /usr/src/myapp hebbo/hebbo.github.io:1.0 jekyll serve`

In MacOS, get the virtual host IP address using the following command:
`docker-machine ip default`
