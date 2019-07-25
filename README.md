# OpenBrokerAPI Skeleton

Basic skeleton to implement a service broker with [openbrokerapi](https://openbrokerapi.readthedocs.io/)

## What to implement

| Feature                 | Method           |
|-------------------------|------------------|
| Register service broker | `catalog`        |
| Visible in marketplace  | `catalog`        |
| Create service          | `provision`      |
| Bind service            | `bind`           |
| Unbind service          | `unbind`         |
| Delete service          | `deprovision`    |
| Support async           | `last_operation` |

## Setup

I recommend [Pipenv](https://docs.pipenv.org/en/latest/) for setup

```shell script
pip install pipenv
pipenv install
```


## Deploy on Cloud Foundry

```bash

# deploy
cf push --random-route

# register service broker in space
cf create-service-broker [broker name] [username] [password] [url] --space-scoped

```

