#!/bin/bash
set -e

## WORKFLOW_NAME and EXECUTION_ID are environment variables that need to be set
## in the AWS Batch Job Submission.  This is used as the unique identifier for
## the workflow so that any outputs generated are isolated from other
## concurrently running workflows.
if [ -z "$WORKFLOW_NAME" ]; then
    WORKFLOW_NAME="workflow"
fi

if [ -z "$EXECUTION_ID" ]; then
    EXECUTION_ID="0"
fi

WORKFLOW_ID="$WORKFLOW_NAME/$EXECUTION_ID"

COMMAND=$1
ARG=$2

function get-ascp-version() {
    ascp ${ARG}
}

$COMMAND
