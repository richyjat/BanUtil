#!/bin/sh

export TOKEN="NjI5NTE3MTE5MjIyMTg2MDA2.Xl8dvw.xjBlCG9CXofq6DIZSs6K8O3tTk4"
export MOD_ROLE_ID="<id>"
export CAN_BAN_ROLE_ID="<id>"
export CAN_KICK_ROLE_ID="<id>"
export WARNING_ROLE_ID="<id>"
export MUTE_ROLE_ID="<id>"
export LOG_CHANNEL_ID="681234130176180272"
export SERVER_ID="635788927348899863"
export OWNER_ID="556037595965161512"
export RESTART_COMMAND="sh run_local.sh"

LATEST_BUILD="$(find ./build/libs | sort --version-sort --field-separator=- --key=2,2 | tail -n 1)"

until java -jar "${LATEST_BUILD}"; do
    echo "BanUtil crashed with exit code $?.  Respawning.." >&2
    sleep 1
done

