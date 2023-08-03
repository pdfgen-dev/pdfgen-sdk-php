# Pdfgen\PdfApi

All URIs are relative to https://api.pdfgen.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**generatePdf()**](PdfApi.md#generatePdf) | **POST** /v1/pdf | Generate PDF |


## `generatePdf()`

```php
generatePdf($req): object
```

Generate PDF

Generates a PDF based on given HTML and parameters

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\PdfApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$req = new \Pdfgen\Model\GeneratePDFRequest(); // \Pdfgen\Model\GeneratePDFRequest | HTML and variables to be converted to PDF

try {
    $result = $apiInstance->generatePdf($req);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PdfApi->generatePdf: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **req** | [**\Pdfgen\Model\GeneratePDFRequest**](../Model/GeneratePDFRequest.md)| HTML and variables to be converted to PDF | |

### Return type

**object**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
