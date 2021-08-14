# Competition Website

This is the competition website for [SourceBots][sourcebots].

This includes the version of the homepage shown during the competition as well
as the specific pages which the progress of the teams and matches at the
competition.

## Getting Started

*Note*: This website makes heavy use of the SRComp HTTP API which is part of
the separate [SRComp suite][srcomp]. These instructions _only_ contain
information about these pages; it is assumed that the reader will configure an
SRComp-HTTP instance separately.

1. [Install Hugo][install-hugo] ([`v0.37`][hugo-0.37])

2. [Install NodeJS & NPM][install-node]

3. Install JS dependencies: `npm install`

4. Start the development server

    ```shell
    $ ./scripts/server.sh
    ```


[sourcebots]: https://sourcebots.org
[srcomp]: https://www.studentrobotics.org/trac/wiki/SRcomp
[install-hugo]: https://gohugo.io/getting-started/installing
[hugo-0.37]: https://github.com/gohugoio/hugo/releases/tag/v0.37
[install-node]: https://nodejs.org/en/
