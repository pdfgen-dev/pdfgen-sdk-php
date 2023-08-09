# Pdfgen\TemplatesApi

All URIs are relative to https://api.pdfgen.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createTemplate()**](TemplatesApi.md#createTemplate) | **POST** /v1/templates | Create Template |
| [**deleteTemplate()**](TemplatesApi.md#deleteTemplate) | **DELETE** /v1/templates/{id} | Delete Template |
| [**generatePdfFromTemplate()**](TemplatesApi.md#generatePdfFromTemplate) | **POST** /v1/templates/{id}/pdf | Generate PDF from Template |
| [**getTemplate()**](TemplatesApi.md#getTemplate) | **GET** /v1/templates/{id} | Get Templates |
| [**listTemplates()**](TemplatesApi.md#listTemplates) | **GET** /v1/templates | List all Templates |
| [**previewTemplate()**](TemplatesApi.md#previewTemplate) | **POST** /v1/templates/{id}/preview | Previews PDF with given variables |
| [**updateTemplate()**](TemplatesApi.md#updateTemplate) | **PUT** /v1/templates/{id} | Update Template |


## `createTemplate()`

```php
createTemplate($req): \Pdfgen\Model\TemplateResponse
```

Create Template

Creates a new template for authenticated account and returns the created template

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$req = new \Pdfgen\Model\CreateTemplateRequest(); // \Pdfgen\Model\CreateTemplateRequest

try {
    $result = $apiInstance->createTemplate($req);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->createTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **req** | [**\Pdfgen\Model\CreateTemplateRequest**](../Model/CreateTemplateRequest.md)|  | |

### Return type

[**\Pdfgen\Model\TemplateResponse**](../Model/TemplateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteTemplate()`

```php
deleteTemplate($id): string
```

Delete Template

Deletes the template based on the provided ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Template ID

try {
    $result = $apiInstance->deleteTemplate($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->deleteTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Template ID | |

### Return type

**string**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `generatePdfFromTemplate()`

```php
generatePdfFromTemplate($id, $variables): \SplFileObject
```

Generate PDF from Template

Generates a PDF based on given parameters and the template for provided ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Template ID
$variables = array('key' => new \stdClass); // object | Variables used for the template

try {
    $result = $apiInstance->generatePdfFromTemplate($id, $variables);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->generatePdfFromTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Template ID | |
| **variables** | **object**| Variables used for the template | |

### Return type

**\SplFileObject**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/pdf`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getTemplate()`

```php
getTemplate($id): \Pdfgen\Model\TemplateResponse
```

Get Templates

Returns a single template based on specified ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Template ID

try {
    $result = $apiInstance->getTemplate($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->getTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Template ID | |

### Return type

[**\Pdfgen\Model\TemplateResponse**](../Model/TemplateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listTemplates()`

```php
listTemplates(): \Pdfgen\Model\ListTemplatesResponse
```

List all Templates

Returns all available templates

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listTemplates();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->listTemplates: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Pdfgen\Model\ListTemplatesResponse**](../Model/ListTemplatesResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `previewTemplate()`

```php
previewTemplate($id, $variables): object
```

Previews PDF with given variables

Previews a PDF with given variables

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Template ID or alias
$variables = array('key' => new \stdClass); // object | Variables used for the template

try {
    $result = $apiInstance->previewTemplate($id, $variables);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->previewTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Template ID or alias | |
| **variables** | **object**| Variables used for the template | |

### Return type

**object**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateTemplate()`

```php
updateTemplate($id, $req): \Pdfgen\Model\TemplateResponse
```

Update Template

Updates a template for authenticated account and returns the updated template

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Template ID
$req = new \Pdfgen\Model\UpdateTemplateRequest(); // \Pdfgen\Model\UpdateTemplateRequest

try {
    $result = $apiInstance->updateTemplate($id, $req);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->updateTemplate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Template ID | |
| **req** | [**\Pdfgen\Model\UpdateTemplateRequest**](../Model/UpdateTemplateRequest.md)|  | |

### Return type

[**\Pdfgen\Model\TemplateResponse**](../Model/TemplateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
