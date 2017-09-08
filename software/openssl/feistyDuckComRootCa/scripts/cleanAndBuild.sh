#!/bin/bash

ROOT_CA_TEST_PRIV_PASS="hg63h9bd63h"
SUB_CA_TEST_PRIV_PASS="jh48dn784764br"

rm -rf ../root-ca ../sub-ca ../server ../client
./root-ca.sh ${ROOT_CA_TEST_PRIV_PASS}
