# Building a base Ubuntu VM for Virtualbox

This guide describes the steps needed to build a base Ubuntu VM OVA
which is the foundation of building other, more specific
VMs. Currently the process is manual but it could be automated with
HashiCorp Packer.

Time needed to execute the install: 2:40

Step | Time (mins)
-----|------------
VirtualBox install | 15
Image download | 32
Create VM | 5
Install the VM, config | 8
Installation, (idle)| 32
Post install|5
Install VirtualBox addons|8
Reboot, shutdown|3
Export|20
Upload to S3|32

## Installation steps

1. Install the latest VirtualBox.
  1. Download the latest VirtualBox binary from
     [virtualbox.org](https://www.virtualbox.org/wiki/Downloads)
  1. Install the application as Administrator.
2. Download the Ubuntu 20.04 Desktop image  (Download time: 0:32)
  1. Go to https://ubuntu.com/download/desktop and download the ISO.
3. Create the virtual machine. (0:05)
  1. Open Virtualbox. Click New.
     ![Create VM](images/create_vm_01.jpg)
  2. Create new VM.
     ![Create VM](images/create_vm_02.jpg)
     1. Name: Ubuntu 2004 LTS Clean
  3. Adjust hardware settings.
    1. Open the Settings of the VM by right clicking on the VM and
       selecting Settings…
      ![Create VM](images/create_vm_03.jpg)
     1. Open the VM Settings.
    1. Select System, Processor. Set 4 processors
    1. Select Display. Adjust the video RAM to the maximum 128 MB.
  4. Add Home drive
    1. Select storage, click the "Controller: SATA: and click the hard 
       drive icon with the plus. Select the "Create new disk" from the
       dialog. Select VDI as disk format, Dynamically allocated, rename
       the file to Home.vdi, and adjust the size to 30 GB.
       ![Create VM](images/create_vm_04.jpg) 
      ![Create VM](images/create_vm_05.jpg)
     2. Mount the install disk. Choose the ISO image you downloaded.
      ![Create VM](images/create_vm_06.jpg)
   5. Start the VM.
4. Installation 
  1. After the installer has booted, click Install Ubuntu
     ![Create VM](images/install_01.jpg) 
     ![Create VM](images/install_02.jpg) 
  2. Hit Enter on the keyboard layout page.
     ![Create VM](images/install_03.jpg) 
  3. Select Minimal installation, Download updates, and install 
     third-party software.	
     ![Create VM](images/install_04.jpg) 
  4. Select "Something else" from the installation type. (4:10)
     ![Create VM](images/install_05.jpg) 
  5. Create partitions. On the  /dev/sda drive, use 8 GB for swap, 
     the rest as /. Format the whole sdb disk and mount it as /home.
     ![Create VM](images/install_06.jpg) 
     ![Create VM](images/install_07.jpg) 
  6. Select your time zone.
     ![Create VM](images/install_08.jpg) 
  7. Fill the name, host name, username, password fileds. Use welcome 
     as password.
     ![Create VM](images/install_09.jpg) 
  8. Wait for the installation to complate. 4:13-4:41
     ![Create VM](images/install_10.jpg) 
     ![Create VM](images/install_11.jpg) 
     ![Create VM](images/install_12.jpg) 

  9. Complete the post install wizard, click Skip / Next everywhere.
     ![Create VM](images/postinstall_01.jpg) 
     ![Create VM](images/postinstall_02.jpg) 
     ![Create VM](images/postinstall_03.jpg) 
     ![Create VM](images/postinstall_04.jpg) 
     ![Create VM](images/postinstall_05.jpg) 

5. Virtualbox Addons setup
  1. Open terminal 
  2. sudo apt-get install build-essential
  3. Insert Guest addons CD. Run the contents. Eject the CD
     ![Create VM](images/vboxaddons.jpg) 

6. Postinstall steps
  1. Update system packages

  2. Install OpenSSH server
     sudo apt install openssh-server

  3. Remove Sudo password from the developer user
     Sudo visudo, edit the sudoers file. Add line to allow non-password sudo.

  4. Add the developer user to the vboxsf group.
     sudo usermod -a -G vboxsf developer

7. Reboot the VM then shut it down.
8. Export the VM 5:06 - 5:26
     ![Create VM](images/export1.jpg) 

9. Optionally back up the VM by uploading it to S3.

The resulting OVA file is used in the next step.