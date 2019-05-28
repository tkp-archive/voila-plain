from setuptools import setup
import os

data_files = []
for root, dirs, files in os.walk('share'):
    root_files = [os.path.join(root, i) for i in files]
    data_files.append((root, root_files))

setup_args = {
    'name': 'voila-plain',
    'version': '0.0.2',
    'packages': [],
    'data_files': data_files,
    'install_requires': [
        'voila'
    ],
    'author': 'Tim Paine',
    'author_email': 'timothy.k.paine@gmail.com',
    'url': 'https://github.com/timkpaine/voila-plain/'
}

if __name__ == '__main__':
    setup(**setup_args)
