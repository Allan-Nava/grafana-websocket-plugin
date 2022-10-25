setup:
	go get -u github.com/grafana/plugin-validator/cmd/plugincheck

validate-plugin:
	cp -r dist grafana-websocket-plugin
	zip grafana-websocket-plugin grafana-websocket-plugin -r
	plugincheck ./golioth-websocket-datasource.zip || true
	rm -r grafana-websocket-plugin
	rm grafana-websocket-plugin.zip