from setuptools import setup, find_packages

setup(
    name='apiverve_inflationrate',
    version='1.1.13',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Inflation Rate is a tool for retrieving annual inflation rate and CPI data for countries worldwide. It returns the inflation rate, CPI index value, and country details for any year going back to 1960.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/inflation?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
