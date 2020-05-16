set PATH=%PATH%;c:\Program Files\Oracle\VirtualBox

VBoxManage import --vsys 0 --vmname "%2" %1

REM ###########################################################################
REM # Enabling NAT DNS Host Resolver for VPN use cases.
REM # This seting is necessary to leave the burden of IKEv2 name resolution
REM # on the host OS side. Otherwise the guest VM would receive BOTH the
REM # ISP default DNS sever IPs AND the VPN settings, leading to intermittent
REM # or just non-functional VPN name resolution. To diagnose if name resolution
REM # is the only one not working, ping a known resource on the intranet.
REM ############################################################################

VBoxManage modifyvm "%2" --natdnshostresolver1 on

