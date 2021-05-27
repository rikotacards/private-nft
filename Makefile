build: 
	cd nft && daml build
	cd nft && codegen js -o daml.js .daml/dist/*.dar

deploy: build
	mkdir -p deploy
	cp nft/.dal/dist/*.dar deploy

clean: 
	cd nft && rm -rf .daml
	cd nft && rm -rf daml.js
	rm -rf deploy
