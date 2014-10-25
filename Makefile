NAME = whatupdave/partycloud-minecraft

.PHONY: all build_vanilla build_tekkit release

all: build_vanilla build_tekkit

build_vanilla:
	docker build -t $(NAME):vanilla vanilla

build_tekkit:
	docker build -t $(NAME):tekkit tekkit

release:
	docker push $(NAME):vanilla
	docker push $(NAME):tekkit
