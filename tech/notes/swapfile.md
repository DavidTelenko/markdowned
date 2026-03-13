# The procedure to create swapfile

```sh
sudo swapoff /swapfile
sudo rm /swapfile
sudo fallocate -l 32GiB /swapfile
sudo filefrag -e /swapfile
sudo mkswap -L swapfile /swapfile
sudo swapon /swapfile
free
```
