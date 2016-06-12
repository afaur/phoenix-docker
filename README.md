## A Docker container for the Phoenix framework

It features all the latest versions of the Phoenix web framework, the Elixir language and the Erlang platform.

![Phoenix Logo](https://www.filepicker.io/api/file/9prSmznZTiaRRmI3t89E)

Phoenix is a framework for building scalable web applications with realtime connectivity across all your devices. It relies on the Elixir language for making the development of maintainable applications productive and fun.

### How to use this container
```
docker run -it --rm -v "$PWD":/code -w /code kazw/elixir-phoenix-ci mix test
```
Or
```
wercker build --direct-mount
```
Example [wercker.yml](wercker.yml)
