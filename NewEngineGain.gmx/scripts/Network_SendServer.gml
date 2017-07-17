///Network_SendServer(isUDP?)

if argument0==true
    sendmessage(Network.udpListen,Network.serverIP,Network.udpPortHost,0)
else
    sendmessage(Network.server,0,0,0)
