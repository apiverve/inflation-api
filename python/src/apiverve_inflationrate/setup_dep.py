from setuptools import setup, find_packages

setup(
    name='apiverve_inflationrate',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Inflation Rate reports annual inflation rates and Consumer Price Index (CPI) values for any country by two-letter country code. Outputs include the year-over-year price change percentage, CPI index, and base comparison year, with paid plans supporting historical lookups by year.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/inflation?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
