function clicov
	rm -rf coverage
	env COVERAGE=true \
		node_modules/.bin/nyc -n "build/pd2/scripts/cli" -x "**/test/**" -x "tmp/**" -x "plaid-typings/**" --reporter=html --reporter=json-summary --reporter=text-summary \
		-x "**/pd2/extractor/**/*" -x "**/pd2/subextractor/**/*" -x "!**/pd2/extractor/index.*" \
		node_modules/.bin/mocha --exit --require source-map-support/register --require build/test/init --file build/test/global-hooks \
		build/pd2/test/scripts/cli/**.js
end
