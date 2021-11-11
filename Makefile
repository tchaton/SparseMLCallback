.PHONY: test clean docs

# to imitate SLURM set only single node
export SLURM_LOCALID=0
# assume you have installed need packages
export SPHINX_MOCK_REQUIREMENTS=0

test:
	pip install -r requirements.txt
	pip install -r tests/requirements.txt

	# use this to run tests
	rm -rf _ckpt_*
	rm -rf ./lightning_logs
	python -m coverage run --source pl_sandbox -m pytest pl_sandbox tests -v --flake8
	python -m coverage report

	# specific file
	# python -m coverage run --source pl_sandbox -m pytest --flake8 --durations=0 -v -k

docs: clean
	pip install --quiet -r docs/requirements.txt
	python -m sphinx -b html -W --keep-going docs/source docs/build

clean:
	# clean all temp runs
	rm -rf $(shell find . -name "mlruns")
	rm -rf .mypy_cache
	rm -rf .pytest_cache
	rm -rf ./docs/build
	rm -rf ./docs/source/**/generated
	rm -rf ./docs/source/api
