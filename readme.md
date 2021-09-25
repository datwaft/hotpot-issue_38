# Hotpot Issue [#38](https://github.com/rktjmp/hotpot.nvim/issues/38) Bug Reproduction

A reproduction of the hotpot issue [#38](https://github.com/rktjmp/hotpot.nvim/issues/38) using Docker.

## How to reproduce the issue

Execute the following docker command:

```sh
docker build -t hotpot-issue_38 . && docker run -it hotpot-issue_38
```

After that execute the `nvim` command.

## How to test the functionality in Fennel

Execute the following docker command:

```sh
docker build -t hotpot-issue_38 . && docker run -it hotpot-issue_38
```

Inside the container execute the commands:

```sh
cd fennel
fennel init.fnl
```
