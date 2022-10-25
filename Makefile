setup:
	go get -u github.com/grafana/plugin-validator/cmd/plugincheck

validate-plugin:
	cp -r dist allannava-websocket-datasource
	zip allannava-websocket-datasource allannava-websocket-datasource -r
	plugincheck ./allannava-websocket-datasource.zip || true
	rm -r allannava-websocket-datasource
	rm allannava-websocket-datasource.zip
