setup:
	go get -u github.com/grafana/plugin-validator/cmd/plugincheck

validate-plugin:
	cp -r dist allannava-websocket-plugin
	zip allannava-websocket-plugin allannava-websocket-plugin -r
	plugincheck ./allannava-websocket-plugin.zip || true
	rm -r allannava-websocket-plugin
	rm allannava-websocket-plugin.zip
