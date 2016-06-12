## A Docker container for Elixir/Phoenix

The container features all the latest versions of Erlang, Elixir and Phoenix.

### How to use this container
Go to your project root.
```
docker run -it --rm -v "$PWD":/code -w /code kazw/elixir-phoenix-ci mix test
```
Or
```
wercker build --direct-mount
```
Example [config/test.exs](test.exs) and [wercker.yml](wercker.yml).
