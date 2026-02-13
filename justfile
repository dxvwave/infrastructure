run-dev:
    docker-compose -f docker-compose.local.yaml up --build -d

stop-dev:
    docker-compose -f docker-compose.local.yaml down

run-local-infra:
    docker-compose -f docker-compose.local-infra.yaml up --build -d

stop-local-infra:
    docker-compose -f docker-compose.local-infra.yaml down
