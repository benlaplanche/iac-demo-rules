test:
	snyk-iac-rules test

build:
	snyk-iac-rules build

int:
	snyk iac test --org=ben.laplanche.test --rules=bundle.tar.gz --json-file-output=results.json &>/dev/null || true && cd integration && shellspec