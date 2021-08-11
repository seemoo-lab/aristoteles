from setuptools import setup
import os

VERSION = "0.1"

def get_long_description():
    with open(
        os.path.join(os.path.dirname(os.path.abspath(__file__)), "README.md"),
        encoding="utf8",
    ) as fp:
        return fp.read()

setup(
    name="libari",
    description="Create custom ARI packets.",
    long_description=get_long_description(),
    long_description_content_type="text/markdown",
    author="Tobias Kröll",
    license="MIT",
    version=VERSION,
    packages=["libari"],
    install_requires=[],
    extras_require={"test": ["pytest"]},
    tests_require=["libari[test]"],
    python_requires=">=3.6",
)