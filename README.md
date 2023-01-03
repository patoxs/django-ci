# Github Action for Djando CI

- Image based on python:3.11.0-slim.

## Usage

`.github/workflows/eks.yml`

```hcl
on: push
name: test
jobs:
  test:
    name: tester django
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: deploy to cluster
      uses: patoxs/django-ci@main
      env:
        VAR_ENVIROMENT: ${{ secrets.VAR }}
      with:
        args: test --settings=${{ secrets.VAR_SET }}
```