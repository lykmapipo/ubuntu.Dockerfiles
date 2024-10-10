# Ubuntu Dockerfiles

Dockerfiles for building Ubuntu-based Docker images for development and experimentation.

> :sparkles: :tada: These Dockerfiles provide a starting point for creating custom development environments using various versions of Ubuntu, pre-configured with essential tools, packages and libraries to streamline the development and experimentation process. :rocket:


## Requirements

- [Ubuntu v18+](https://ubuntu.com/)
- [Docker v24.0.2+](https://docs.docker.com/get-docker/)
- [Docker Compose v1.29.2+](https://docs.docker.com/compose/install/)


## Usage

- Clone this repository
```sh
git clone https://github.com/lykmapipo/ubuntu.Dockerfiles.git
```

- Install base docker images
```sh
make pull
```

- Make docker images
```sh
make build
```

- Run base (bare) docker image
```sh
make run/base
```
```sh
make run/base-non-root
```

- Run development docker image
```sh
make run/dev
```
```sh
make run/dev-non-root
```


## Contribute

It will be nice, if you open an issue first so that we can know what is going on, then, fork this repo and push in your ideas. Do not forget to add a bit of test(s) of what value you adding.


## Licence

The MIT License (MIT)

Copyright (c) lykmapipo & Contributors

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
