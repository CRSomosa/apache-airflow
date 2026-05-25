#!/usr/bin/env bash

# Airflow and Python version
export AIRFLOW_VERSION=3.0.2
export PYTHON_VERSION=$(python3 --version | cut -d' ' -f2 | cut -d'.' -f1-2)

# Constraint URL for pip install
export CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"

echo "Install with the following command:"
echo "pip install apache-airflow==${AIRFLOW_VERSION} --constraint \"${CONSTRAINT_URL}\""
