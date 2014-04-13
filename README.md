# sprout-pythonz

## Recipes

## `sprout-pythonz`

### Attributes: `sprout`:`sprout-pythonz`

#### `pythons`

Hash of pythons to install, where each key is the version and the value is a hash of options for
that version. Available options are:

- `type`: Type of Python version: `cpython`, `stackless`, `pypy` or `jython`.
- `force`: Force installation of python even if tests fail.
- `run-tests`: Run `make test` after compiling.
- `url`: URL used to download the specified python version.
- `file`: File pinting to the python version to be installed.
- `verbose`: Display log information on the console.
- `configure`: Options passed directly to configure.
- `framework`: Build (MacOSX|Darwin) framework.
- `universal`: Build for both 32 & 64 bit Intel.
- `static`: Build static libraries.

## Examples
