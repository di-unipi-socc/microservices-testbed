#!/bin/sh -xe
abs_path=$(cd $(dirname $0)/../../.. && pwd)

cp -r $abs_path/extensibility/backend \
      $abs_path/extensibility/frontend1 \
      $abs_path/extensibility/frontend2 .

docker-compose -f docker-compose1.yml build
docker-compose -f docker-compose2.yml build

rm -r backend frontend1 frontend2
