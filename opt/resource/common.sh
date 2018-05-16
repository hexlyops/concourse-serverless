export TMPDIR=${TMPDIR:-/tmp}

set_serverless_credentials() {
    local key=$(jq -r .aws_key < $1)
    local secret=$(jq -r .aws_secret < $1)

    serverless config credentials --provider aws --key key --secret secret
}