#!/usr/bin/make -f

IMAGE := naftulikay/loki-vm:latest
EXEC_COMMAND := docker run -it --rm --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro --entrypoint /usr/bin/ansible $(IMAGE)

build:
	docker build -t $(IMAGE) .

test:
	@# test distribution
	$(EXEC_COMMAND) -i 127.0.0.1, -c local -m setup -a filter=ansible_distribution localhost | \
		grep -oP 'elementary OS'

	@# test distribution release
	$(EXEC_COMMAND) -i 127.0.0.1, -c local -m setup -a filter=ansible_distribution_release localhost | \
		grep -oP '\b(loki)\b'

	@# test os family
	$(EXEC_COMMAND) -i 127.0.0.1, -c local -m setup -a filter=ansible_os_family localhost | \
		grep -oP 'elementary OS'

travis: build test
