import sys
import os

# Add current directory (/app) to Python path
sys.path.append(os.getcwd())

import my_app

def test_app_import():
    assert my_app is not None