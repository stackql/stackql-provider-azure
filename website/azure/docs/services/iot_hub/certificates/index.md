--- 
title: certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - certificates
  - iot_hub
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>certificates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>certificates</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub.certificates" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_iot_hub', value: 'list_by_iot_hub' }
    ]}
>
<TabItem value="get">

The body contains the certificate.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the certificate.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The entity tag.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The description of an X509 CA Certificate.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_iot_hub">

The body contains all the certificate list.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the certificate.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The entity tag.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The description of an X509 CA Certificate.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-certificateName"><code>certificateName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Returns the certificate.</td>
</tr>
<tr>
    <td><a href="#list_by_iot_hub"><CopyableCode code="list_by_iot_hub" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Returns the list of certificates.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-certificateName"><code>certificateName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Adds new or replaces existing certificate.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-certificateName"><code>certificateName</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes an existing X509 certificate or does nothing if it does not exist.</td>
</tr>
<tr>
    <td><a href="#generate_verification_code"><CopyableCode code="generate_verification_code" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-certificateName"><code>certificateName</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Generates verification code for proof of possession flow. The verification code will be used to generate a leaf certificate.</td>
</tr>
<tr>
    <td><a href="#verify"><CopyableCode code="verify" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-certificateName"><code>certificateName</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Verifies the certificate's private key possession by providing the leaf cert issued by the verifying pre uploaded certificate.</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Certificate.</td>
</tr>
<tr id="parameter-certificateName">
    <td><CopyableCode code="certificateName" /></td>
    <td><code>string</code></td>
    <td>The name of the certificate</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the IoT hub.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the IoT hub.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Certificate. Do not specify for creating a brand new certificate. Required to update an existing certificate.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_iot_hub', value: 'list_by_iot_hub' }
    ]}
>
<TabItem value="get">

Returns the certificate.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.iot_hub.certificates
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND certificateName = '{{ certificateName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_iot_hub">

Returns the list of certificates.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.iot_hub.certificates
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Adds new or replaces existing certificate.

```sql
INSERT INTO azure.iot_hub.certificates (
data__properties,
subscriptionId,
resourceGroupName,
resourceName,
certificateName,
api-version,
If-Match
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ resourceName }}',
'{{ certificateName }}',
'{{ api-version }}',
'{{ If-Match }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: certificates
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the certificates resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the certificates resource.
    - name: resourceName
      value: string
      description: Required parameter for the certificates resource.
    - name: certificateName
      value: string
      description: Required parameter for the certificates resource.
    - name: properties
      value: object
      description: |
        The description of an X509 CA Certificate.
    - name: api-version
      value: string
      description: The version of the API.
    - name: If-Match
      value: string
      description: ETag of the Certificate. Do not specify for creating a brand new certificate. Required to update an existing certificate.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes an existing X509 certificate or does nothing if it does not exist.

```sql
DELETE FROM azure.iot_hub.certificates
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND certificateName = '{{ certificateName }}' --required
AND If-Match = '{{ If-Match }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="generate_verification_code"
    values={[
        { label: 'generate_verification_code', value: 'generate_verification_code' },
        { label: 'verify', value: 'verify' }
    ]}
>
<TabItem value="generate_verification_code">

Generates verification code for proof of possession flow. The verification code will be used to generate a leaf certificate.

```sql
EXEC azure.iot_hub.certificates.generate_verification_code 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@resourceName='{{ resourceName }}' --required, 
@certificateName='{{ certificateName }}' --required, 
@If-Match='{{ If-Match }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="verify">

Verifies the certificate's private key possession by providing the leaf cert issued by the verifying pre uploaded certificate.

```sql
EXEC azure.iot_hub.certificates.verify 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@resourceName='{{ resourceName }}' --required, 
@certificateName='{{ certificateName }}' --required, 
@If-Match='{{ If-Match }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"certificate": "{{ certificate }}"
}'
;
```
</TabItem>
</Tabs>
