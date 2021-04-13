echo "Download latest Miniconda linux installer ..."
curl -fLo conda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
echo "Run the installer ..."
bash conda.sh -u
echo "Initiate conda in fish shell ..."
/home/karna/miniconda3/bin/conda init fish
rm conda.sh
