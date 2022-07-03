install-local:
	pip install -r local-requirements.txt
install:
	pip install -r requirements.txt

format:
	black *.py
	
lint:
	pylint --disable=R,C main.py
