#!/bin/bash
export COMPOSE_PROJECT_NAME=bananinha_${CI_COMMIT_SHA}
docker-compose -f docker/compose/test.yml run bananinha unittests.sh
exitcode=$?
docker-compose -f docker/compose/test.yml down
exit $exitcode
