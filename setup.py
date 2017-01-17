from setuptools import setup, find_packages
from codecs import open
from os import path

here = path.abspath(path.dirname(__file__))

def read(relpath):
	with open(path.join(here, *relpath.split('/')), encoding='utf-8') as f:
		return f.read()

setup(
	name='my-borg',
	version=read('VERSION'),
	description='TODO',
	packages=find_packages(exclude=['doc', 'test']),
	# install_requires=['borgbackup'],
	scripts=['bin/my-borg'],
)

