# AIMLSSE
The shortened term "AIMLSSE" stands for "AI/ML based Support for Satellite Exploration".

----

This Repository works with the other repositories of the AIMLSSE Project to provide a simple setup using docker compose.
To achieve this, the other repositories are included as submodules.
When cloning this repository, make sure to also clone the submodules:
```
git clone --recurse-submodules git@git.scc.kit.edu:master-thesis-ai-ml-based-support-for-satellite-exploration/aimlsse.git
```

## Setup
*All commands are expected to be issued from the root directory of this repository.*

First build the project:
```
make
```

Then build the services from the `aimlsse-base` image and create their volumes:
```
docker compose up
```

With this, all services should be running and ready to receive requests.

## Usage
To use the services, make sure to provide the correct **ip-address** and **port** to the API clients.
By default, the services are accessible as follows:

| Service | IP-address | Port |
|---------|------------|------|
| [Ground Data](https://git.scc.kit.edu/master-thesis-ai-ml-based-support-for-satellite-exploration/ground-data-service)    | 127.0.0.1  | 8000 |
| [Satellite Data](https://git.scc.kit.edu/master-thesis-ai-ml-based-support-for-satellite-exploration/satellite-data-service) | 127.0.0.1  | 8010 |

Example usage scenarios are provided by the included notebooks.