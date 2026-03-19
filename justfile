run-dev:
    docker-compose -f docker-compose.local.yaml up --build -d

stop-dev:
    docker-compose -f docker-compose.local.yaml down

restart-dev:
    docker-compose -f docker-compose.local.yaml down && docker-compose -f docker-compose.local.yaml up --build -d

run-local-infra:
    docker-compose -f docker-compose.local-infra.yaml up --build -d

stop-local-infra:
    docker-compose -f docker-compose.local-infra.yaml down

restart-local-infra:
    docker-compose -f docker-compose.local-infra.yaml down && docker-compose -f docker-compose.local-infra.yaml up --build -d
