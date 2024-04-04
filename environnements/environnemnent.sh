# Gestion des environnements python

# Une solution intégrée à python: virtualenv
# https://docs.python.org/3/tutorial/venv.html

# La solution conseillée: utilisation de conda
# https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html


# Création d'environnement
# conda create --name test
conda create -n ml python=3.11
conda env list

# Se placer dans l'environnement
conda activate ml
# (ml) ➜  ~

# Installation de librairies, par exemple beautifulsoup
conda install -c anaconda beautifulsoup4

# Sauvegarde des caractérisques d'un environnment pour le reproduire
conda env export > ml.yml

# Sortie de l'environnement
conda deactivate

# Suppression de l'environnement
conda env remove --name ml

# Création d'environnement à partir d'un fichier yaml
conda env create -f ml.yml

## Liste des environnements existants
conda env list

## install jupyter lab
# https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html
conda install -c conda-forge jupyterlab


# Ajout de l'environnement à Jupyter
# Il faut que Jupyter soit installé
# cf "method 2" dans
# https://towardsdatascience.com/get-your-conda-environment-to-show-in-jupyter-notebooks-the-easy-way-17010b76e874
(new-env)$ conda install ipykernel
(new-env)$ ipython kernel install --user --name=ml

# List existing Jupyter virtual environments
jupyter kernelspec list

# Remove the environment from Jupyter
jupyter kernelspec uninstall 'ml'
