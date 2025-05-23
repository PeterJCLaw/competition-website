# Competition Website

This is the competition website for [Student Robotics][SR].

This includes the version of the homepage shown during the competition as well
as the specific pages which the progress of the teams and matches at the
competition.

## Getting Started

*Note*: This website makes heavy use of the SR Competition API which is part of
the separate [SRComp suite][srcomp]. These instructions _only_ contain
information about these pages; it is assumed that the reader will configure an
SRComp-HTTP instance separately.

1. [Clone this repo][clone-repo]

1. [Install Ruby 3][install-ruby]

   See `.ruby_version` for the precise version, though 3.3 or above will
   probably be fine.

1. (Optional) Install [Node.js and npm][install-node].

    This allows JS tests to be run locally.
    Node is not required for the website to be built.

1. Install Bundler (2.3 or above) and Rake.

   Depending on how you have installed Ruby these may already be installed.

    ``` console
    $ gem install bundler rake
    ```

1. Start the app in development mode

    ```shell
    $ rake dev
    ```

1. View the site at <http://localhost:4000/competition-website/comp/>

## Deployment

The site defined in this repo is deployed onto GitHub Pages (using GitHub
Actions) and surfaced at <https://studentrobotics.org/comp/>.

During competition events the main page is also used as a takeover of our
website homepage. This is toggled via `enable_competition_homepage` in our
[ansible][srobo-ansible] config.


[SR]: https://studentrobotics.org
[srcomp]: https://github.com/PeterJCLaw/srcomp/wiki
[install-ruby]: https://www.ruby-lang.org/en/documentation/installation/
[install-node]: https://docs.npmjs.com/downloading-and-installing-node-js-and-npm
[clone-repo]: https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository
[srobo-ansible]: https://github.com/srobo/ansible/
