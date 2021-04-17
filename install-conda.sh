echo "Download latest Miniconda linux installer ..."
curl -fLo conda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

echo "Run the installer ..."
bash conda.sh -u

echo "Initiate conda in fish shell ..."
/home/karna/miniconda3/bin/conda init fish

echo "Deleting the installer ..."
rm conda.sh

echo "Update conda ..."
/home/karna/miniconda3/bin/conda update conda

echo "Create quantum environment ..."
/home/karna/miniconda3/bin/conda create -n "quantum" python=3.8 numpy 

echo "Create ds environment ..."
/home/karna/miniconda3/bin/conda create -n "ds" python=3.8 numpy pandas pytorch django tensorflow
