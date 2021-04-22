# Interactive Haskell Lib Tutorials /w CodeLens

## Not long, yet don't read

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/complyue/GHCiCode)

A single click on above badge can spin up a full fledged Cloud IDE for modern Haskell software development, that's much more than enough to take just simple tutorials.

![0-home-page](https://user-images.githubusercontent.com/15646573/115717628-efee3400-a3ac-11eb-9d6a-ef6ee36d6cb6.png)

## This is just a template

This is a project template for interactive Haskell tutorials that a reader can click through some `.hs` source files, tinker with each piece of snippets to see & feel how they can make a difference.

## The point

It's much easier for Haskell beginners, as well as chromeOS<sup>TM</sup> and Windows<sup>TM</sup> users to painlessly onboard modern Haskell.

## The giants

[Gitpod](https://gitpod.io) and the upcoming [Github Codespaces](https://github.com/features/codespaces) are great options even for serious Haskell software development.

## Local Development

Prefering a local [VSCode](https://code.visualstudio.com) or [VSCodium](https://vscodium.com/) installed, a reader can also clone such a repository locally and open it with VSCod(e/ium) with recommended extensions installed.

## How it works

The key files for Cloud IDE setup are:

- [/.gitpod.Dockerfile](./.gitpod.Dockerfile)
- [/.gitpod.yml](./.gitpod.yml)

Usual Haskell project definition:

- [/cabal.project](./cabal.project)
- [/stack.yaml](./stack.yaml)

Usual Haskell package directory:

- [/ghci-code/](./ghci-code/)

VSCode extension recommendations:

- [/.vscode/extensions.json](./.vscode/extensions.json)
