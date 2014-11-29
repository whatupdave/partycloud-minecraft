NAME = partycloud/minecraft

.PHONY: all build_spigot build_tekkit build_vanilla release

all: build_spigot build_tekkit build_vanilla

build_spigot:
	docker build -t $(NAME):spigot spigot

build_tekkit:
	docker build -t $(NAME):tekkit tekkit

build_vanilla:
	docker build -t $(NAME):vanilla vanilla

release:
	docker push $(NAME):spigot
	docker push $(NAME):tekkit
	docker push $(NAME):vanilla
