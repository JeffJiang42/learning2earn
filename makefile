GithubID = JeffJiang42
RepoName = idb
SHA      = hello

githubid:
	@echo "${GithubID}"

reponame:
	@echo "${RepoName}"

sha:
	@echo "${SHA}"

gui_testing:
	sudo apt-get install xserver-xephyr
	sudo apt-get install xvfb
	pip install pyvirtualdisplay selenium

travis:
	cd react/; npm install
	cd react/; npm test
	cd react/__tests__/gui_tests; make travis
	@echo

# The Makefile should be present in the root of the project.
# There should be the following commands written:

# make github   - prints link to github repo
github:
	@echo "http://www.github.com/${GithubID}/${RepoName}"

# make issues   - prints link to current phase's issues
issues:
	@echo "http://www.github.com/${GithubID}/${RepoName}/issues"

# make stories  - prints link to current phase's stories
stories:
	@echo "http://www.github.com/${GithubID}/${RepoName}/blob/${SHA}/stories.txt"

# make uml      - prints link to uml diagram
uml:
	@echo "http://www.github.com/${GithubID}/${RepoName}/blob/${SHA}/uml.png"

# make selenium - runs selenium tests
selenium:
	- @(cd react/__tests__//gui_tests; make travis)

# make frontend - runs frontend tests
frontend:
	@(cd react; npm install; npm test)

# make backend  - runs backend tests
backend:
	python backend/tests.py

# make website  - prints link to a website
website:
	@echo "http://www.learning2earn.me/"

# make report   - prints link to technical report
report:
	@echo "http://${GithubID}.gitbooks.io/report/"

# make apidoc   - prints link to api documentation
apidoc:
	@echo "http://${GithubID}.gitbooks.io/api/"

# make self     - prints link to self critique
self:
	@echo "http://${GithubID}.gitbooks.io/api/path-to-self-critique"

# make other    - prints link to other critique
other:
	@echo "http://${GithubID}.gitbooks.io/api/path-to-other-critique"

