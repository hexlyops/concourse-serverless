export TMPDIR=${TMPDIR:-/tmp}

set_serverless_credentials() {
    local key=$(echo $1 | jq -r .access_key_id)
    local secret=$(echo $1 | jq -r .secret_access_key)

    serverless config credentials --provider aws --key $key --secret $secret
}