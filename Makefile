setup:
	#You may want to create an alias to automatically source this:
	# alias functop="cd ~/src/functional_intro_to_python && source ~/.func/bin/activate"
	python3 -m venv ~/.func

install:
	pip install -r requirements.txt

test:
	#PYTHONPATH=. && pytest -vv --cov=paws --cov=spot-price-ml tests/*.py
	PYTHONPATH=. && py.test --nbval-lax EffectivePython/*.ipynb

lint:
	pylint --disable=R,C funclib

run-effective-python-pythonic-thinking:
	jupyter nbconvert EffectivePython/PythonicThinking.ipynb --post serve

run-msds422-assignment-01:
	jupyter nbconvert MSDS422/Assignment_01.ipynb --post serve
	
all: install lint test