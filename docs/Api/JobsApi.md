# Pdfgen\JobsApi

All URIs are relative to https://api.pdfgen.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**downloadFile()**](JobsApi.md#downloadFile) | **GET** /v1/jobs/{id}/download | Download file |
| [**listJobs()**](JobsApi.md#listJobs) | **GET** /v1/jobs | List all Jobs |


## `downloadFile()`

```php
downloadFile($id): string
```

Download file

Download the file for the specified job

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\JobsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Job ID

try {
    $result = $apiInstance->downloadFile($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JobsApi->downloadFile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Job ID | |

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

## `listJobs()`

```php
listJobs(): \Pdfgen\Model\ListJobsResponse
```

List all Jobs

Returns all jobs

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKey('X-Pdfgen-Api-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Pdfgen\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Pdfgen-Api-Token', 'Bearer');


$apiInstance = new Pdfgen\Api\JobsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listJobs();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JobsApi->listJobs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Pdfgen\Model\ListJobsResponse**](../Model/ListJobsResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
