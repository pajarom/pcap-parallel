it:
	python setup.py build

testit:
	PYTHONPATH=. pytest

package: testit packageforce

packageforce:
	rm -rf dist
	python setup.py sdist bdist_wheel

publish:
	python -m twine upload -u __token__ dist/*

install:
	python setup.py install
