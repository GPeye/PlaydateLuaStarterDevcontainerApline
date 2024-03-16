#!/bin/bash
$PLAYDATE_SDK_PATH/bin/pdc ./source/ hello.pdx
ssh $LOCAL_USER@172.17.0.1 -t pkill -9 -f 'PlaydateSimulat'

ssh $LOCAL_USER@172.17.0.1 -t nohup /etc/PlaydateSDK/bin/PlaydateSimulator $LOCAL_WORKSPACE/hello.pdx 1>/dev/null 2>/dev/null &