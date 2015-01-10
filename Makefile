NAME = partycloud/minecraft

.PHONY: all build_ftb-dw20 ftb-dw20-17 build_spigot build_tekkit build_vanilla release

all: build_ftb-dw20 ftb-dw20-17 build_spigot build_tekkit build_vanilla

build_ftb-dw20:
	docker build -t $(NAME):ftb-dw20 ftb-dw20

build_ftb-dw20-17:
	docker build -t $(NAME):ftb-dw20-17 ftb-dw20-17

build_spigot:
	docker build -t $(NAME):spigot spigot

build_tekkit:
	docker build -t $(NAME):tekkit tekkit

build_vanilla:
	docker build -t $(NAME):vanilla vanilla

release:
	docker push $(NAME):ftb-dw20
	docker push $(NAME):ftb-dw20-17
	docker push $(NAME):spigot
	docker push $(NAME):tekkit
	docker push $(NAME):vanilla
