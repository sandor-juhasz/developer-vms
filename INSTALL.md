# Prerequisites

1. VirtualBox
2. Hashicorp Packer, available on the PATH.
3. Base Ubuntu VM OVA file with the following properties
   - SSH server is enabled.
   - There is a 'developer' user with password 'welcome'. This user has
     passwordless access to sudo.
   - Virtualbox Addons are installed on the machine.

# Installation

1. Copy the base Ubuntu VM image to base_vm/source.ova
2. Open a terminal and open the project directory.
3. Execute one of the included batch files to build the VM.
