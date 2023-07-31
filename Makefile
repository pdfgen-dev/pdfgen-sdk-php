generate:
	@openapi-generator generate -i https://api.pdfgen.dev/v1/swagger.yaml -g php -p pdfgen -o . --git-repo-id pdfgen-sdk-php --git-user-id pdfgen-dev
