# Ubuntu virtual machine images for development

This project contains the VMs I use for my hobby projects and to
perform research on various technologies. In these projects I use a
diverse set of development tools. I started automating these
environments as the manual management of my all-in-one laptop
installation was getting out of hand.

Main reasons for the switch was that *installation documents written
in English just do not work.* I used to take notes of installation
steps in a document but the document was out of date almost as soon as
I saved it. They were also incomplete: some trivial steps were always
missing, and I had to go back to the installation manuals of the
software, costing me precious hours. Code does not miss those details.

##Main technologies used:
- Ansible
- Hashicorp Packer
- VirtualBox
- Ubuntu

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
