#!/bin/sh -xe
abs_path=$(cd $(dirname $0)/../../.. && pwd)

cp -r $abs_path/functionality-oriented/extensibility/{backend,frontend1,frontend2} .

docker-compose -f docker-compose1.yml build
docker-compose -f docker-compose2.yml build

rm -r {backend,frontend1,frontend2}
