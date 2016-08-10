# docker-starbound-gog
A shell container for starbound-gog based on centos.
[![license][1i]][1p]
[![twitter][2i]][2p]

### DESCRIPTION
I have already built a [steam] version of the [starbound] server. However, since I personally begun to transition in using [gog] instead, it is only natural to use [gog] based server instead.

### USAGE
For the server to work, you do need to have a copy **starbound-gog** version at hand. So first, you will extract the **gog_starbound.sh** file in the location of the install directory:

``` bash
unzip gog_starbound*.sh /srv/starbound
```

Then you will run docker container with the directory mounted to where you have the extracted directory:

``` bash
docker run -itPv /srv/starbound:/starbound abaez/starbound-gog
```

And you're done! The server should now be running with the ports `20125:20126` **tcp/udp**.


[1i]: https://img.shields.io/badge/license-MIT-green.svg
[1p]: ./LICENSE
[2i]: https://img.shields.io/badge/twitter-a_baez-blue.svg
[2p]: https://twitter.com/a_baez

[steam]: https://hub.docker.com/r/abaez/starbound/
[starbound]: http://playstarbound.com/
[gog]: https://www.gog.com/game/starbound
