# a-i-gent-worflow
Some files related to office ai agent setup

requires Python 3.11-3.12 (modern versions are not compatable with open-interpretor lib)

## Installation

1. install compatable Python version
2. create venv (use virtualenv, pyenv, e.t.c.) and activate it
3. download requirements: `pip install -r requirements.txt`
4. run needed script: `python example.py` - it should open ai agent automatically running your tasks. It closes dialog after all tasks are executed

## Configuration
### config.json
config file for your interpreter. Currently stores values for open-interpreter. It has not sctrict syntax, you can write whatever you want and then modify configure() function inside your custom Interpreter class to load needed settings 

### tasks.json

`global_instructions`: instructions applied to each task. You can write there any additional info and comments related to whole task sequence

`tasks`: list of tasks that model will execut one-by-one