.PHONY: release
release:
	mkdir -p temp; cd temp; git clone https://github.com/finiteloopme/dcentral-labs; cd dcentral-labs/redbelly/ai-manager/adk-web;
	cd temp; git clone https://github.com/google/adk-web 
	rm -fr temp/adk-web/src/app/components
	cp -r temp/dcentral-labs/redbelly/ai-manager/adk-web/src/app/components temp/adk-web/src/app/
	cd temp/adk-web; npm install; npm run build;
	rm -fr src/google/adk/cli/browser
	cp -r temp/adk-web/dist/agent_framework_web/browser src/google/adk/cli/
