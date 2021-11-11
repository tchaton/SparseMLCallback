"""Root package info."""

import os

from src.__about__ import *  # noqa: F401, F403

_PACKAGE_ROOT = os.path.dirname(__file__)
_PROJECT_ROOT = os.path.dirname(_PACKAGE_ROOT)

from src.callback import SparseMLCallback

__all__ = ["SparseMLCallback"]