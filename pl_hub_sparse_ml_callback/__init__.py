"""Root package info."""

import os

from pl_hub_sparse_ml_callback.__about__ import *  # noqa: F401, F403
from pl_hub_sparse_ml_callback.callback import SparseMLCallback

_PACKAGE_ROOT = os.path.dirname(__file__)
_PROJECT_ROOT = os.path.dirname(_PACKAGE_ROOT)

__all__ = ["SparseMLCallback"]
