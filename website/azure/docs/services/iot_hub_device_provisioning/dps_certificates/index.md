--- 
title: dps_certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - dps_certificates
  - iot_hub_device_provisioning
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

Creates, updates, deletes, gets or lists a <code>dps_certificates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dps_certificates</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub_device_provisioning.dps_certificates" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Metadata for the specified certificate.

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
    <td>properties of a certificate</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of certificate descriptions in a JSON-serialized array.

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
    <td>properties of a certificate</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-certificateName"><code>certificateName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-provisioningServiceName"><code>provisioningServiceName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get the certificate from the provisioning service.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-provisioningServiceName"><code>provisioningServiceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get all the certificates tied to the provisioning service.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-provisioningServiceName"><code>provisioningServiceName</code></a>, <a href="#parameter-certificateName"><code>certificateName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Add new certificate or update an existing certificate.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-provisioningServiceName"><code>provisioningServiceName</code></a>, <a href="#parameter-certificateName"><code>certificateName</code></a></td>
    <td><a href="#parameter-certificate.name"><code>certificate.name</code></a>, <a href="#parameter-certificate.rawBytes"><code>certificate.rawBytes</code></a>, <a href="#parameter-certificate.isVerified"><code>certificate.isVerified</code></a>, <a href="#parameter-certificate.purpose"><code>certificate.purpose</code></a>, <a href="#parameter-certificate.created"><code>certificate.created</code></a>, <a href="#parameter-certificate.lastUpdated"><code>certificate.lastUpdated</code></a>, <a href="#parameter-certificate.hasPrivateKey"><code>certificate.hasPrivateKey</code></a>, <a href="#parameter-certificate.nonce"><code>certificate.nonce</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes the specified certificate associated with the Provisioning Service</td>
</tr>
<tr>
    <td><a href="#generate_verification_code"><CopyableCode code="generate_verification_code" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-certificateName"><code>certificateName</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-provisioningServiceName"><code>provisioningServiceName</code></a></td>
    <td><a href="#parameter-certificate.name"><code>certificate.name</code></a>, <a href="#parameter-certificate.rawBytes"><code>certificate.rawBytes</code></a>, <a href="#parameter-certificate.isVerified"><code>certificate.isVerified</code></a>, <a href="#parameter-certificate.purpose"><code>certificate.purpose</code></a>, <a href="#parameter-certificate.created"><code>certificate.created</code></a>, <a href="#parameter-certificate.lastUpdated"><code>certificate.lastUpdated</code></a>, <a href="#parameter-certificate.hasPrivateKey"><code>certificate.hasPrivateKey</code></a>, <a href="#parameter-certificate.nonce"><code>certificate.nonce</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Generate verification code for Proof of Possession.</td>
</tr>
<tr>
    <td><a href="#verify_certificate"><CopyableCode code="verify_certificate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-certificateName"><code>certificateName</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-provisioningServiceName"><code>provisioningServiceName</code></a></td>
    <td><a href="#parameter-certificate.name"><code>certificate.name</code></a>, <a href="#parameter-certificate.rawBytes"><code>certificate.rawBytes</code></a>, <a href="#parameter-certificate.isVerified"><code>certificate.isVerified</code></a>, <a href="#parameter-certificate.purpose"><code>certificate.purpose</code></a>, <a href="#parameter-certificate.created"><code>certificate.created</code></a>, <a href="#parameter-certificate.lastUpdated"><code>certificate.lastUpdated</code></a>, <a href="#parameter-certificate.hasPrivateKey"><code>certificate.hasPrivateKey</code></a>, <a href="#parameter-certificate.nonce"><code>certificate.nonce</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
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
    <td>ETag of the certificate.</td>
</tr>
<tr id="parameter-certificateName">
    <td><CopyableCode code="certificateName" /></td>
    <td><code>string</code></td>
    <td>The mandatory logical name of the certificate, that the provisioning service uses to access.</td>
</tr>
<tr id="parameter-provisioningServiceName">
    <td><CopyableCode code="provisioningServiceName" /></td>
    <td><code>string</code></td>
    <td>Provisioning service name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the certificate. This is required to update an existing certificate, and ignored while creating a brand new certificate.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API.</td>
</tr>
<tr id="parameter-certificate.created">
    <td><CopyableCode code="certificate.created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Certificate creation time.</td>
</tr>
<tr id="parameter-certificate.hasPrivateKey">
    <td><CopyableCode code="certificate.hasPrivateKey" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the certificate contains private key.</td>
</tr>
<tr id="parameter-certificate.isVerified">
    <td><CopyableCode code="certificate.isVerified" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the certificate has been verified by owner of the private key.</td>
</tr>
<tr id="parameter-certificate.lastUpdated">
    <td><CopyableCode code="certificate.lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Certificate last updated time.</td>
</tr>
<tr id="parameter-certificate.name">
    <td><CopyableCode code="certificate.name" /></td>
    <td><code>string</code></td>
    <td>Common Name for the certificate.</td>
</tr>
<tr id="parameter-certificate.nonce">
    <td><CopyableCode code="certificate.nonce" /></td>
    <td><code>string</code></td>
    <td>Random number generated to indicate Proof of Possession.</td>
</tr>
<tr id="parameter-certificate.purpose">
    <td><CopyableCode code="certificate.purpose" /></td>
    <td><code>string</code></td>
    <td>Describe the purpose of the certificate.</td>
</tr>
<tr id="parameter-certificate.rawBytes">
    <td><CopyableCode code="certificate.rawBytes" /></td>
    <td><code>string (byte)</code></td>
    <td>Raw data of certificate.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get the certificate from the provisioning service.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.iot_hub_device_provisioning.dps_certificates
WHERE certificateName = '{{ certificateName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND provisioningServiceName = '{{ provisioningServiceName }}' -- required
AND If-Match = '{{ If-Match }}'
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Get all the certificates tied to the provisioning service.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.iot_hub_device_provisioning.dps_certificates
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND provisioningServiceName = '{{ provisioningServiceName }}' -- required
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

Add new certificate or update an existing certificate.

```sql
INSERT INTO azure.iot_hub_device_provisioning.dps_certificates (
data__properties,
subscriptionId,
resourceGroupName,
provisioningServiceName,
certificateName,
api-version,
If-Match
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ provisioningServiceName }}',
'{{ certificateName }}',
'{{ api-version }}',
'{{ If-Match }}'
RETURNING
id,
name,
etag,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: dps_certificates
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the dps_certificates resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the dps_certificates resource.
    - name: provisioningServiceName
      value: string
      description: Required parameter for the dps_certificates resource.
    - name: certificateName
      value: string
      description: Required parameter for the dps_certificates resource.
    - name: properties
      value: object
      description: |
        properties of a certificate
    - name: api-version
      value: string
      description: The version of the API.
    - name: If-Match
      value: string
      description: ETag of the certificate. This is required to update an existing certificate, and ignored while creating a brand new certificate.
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

Deletes the specified certificate associated with the Provisioning Service

```sql
DELETE FROM azure.iot_hub_device_provisioning.dps_certificates
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND If-Match = '{{ If-Match }}' --required
AND provisioningServiceName = '{{ provisioningServiceName }}' --required
AND certificateName = '{{ certificateName }}' --required
AND certificate.name = '{{ certificate.name }}'
AND certificate.rawBytes = '{{ certificate.rawBytes }}'
AND certificate.isVerified = '{{ certificate.isVerified }}'
AND certificate.purpose = '{{ certificate.purpose }}'
AND certificate.created = '{{ certificate.created }}'
AND certificate.lastUpdated = '{{ certificate.lastUpdated }}'
AND certificate.hasPrivateKey = '{{ certificate.hasPrivateKey }}'
AND certificate.nonce = '{{ certificate.nonce }}'
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
        { label: 'verify_certificate', value: 'verify_certificate' }
    ]}
>
<TabItem value="generate_verification_code">

Generate verification code for Proof of Possession.

```sql
EXEC azure.iot_hub_device_provisioning.dps_certificates.generate_verification_code 
@certificateName='{{ certificateName }}' --required, 
@If-Match='{{ If-Match }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@provisioningServiceName='{{ provisioningServiceName }}' --required, 
@certificate.name='{{ certificate.name }}', 
@certificate.rawBytes='{{ certificate.rawBytes }}', 
@certificate.isVerified={{ certificate.isVerified }}, 
@certificate.purpose='{{ certificate.purpose }}', 
@certificate.created='{{ certificate.created }}', 
@certificate.lastUpdated='{{ certificate.lastUpdated }}', 
@certificate.hasPrivateKey={{ certificate.hasPrivateKey }}, 
@certificate.nonce='{{ certificate.nonce }}', 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="verify_certificate">

Verifies the certificate's private key possession by providing the leaf cert issued by the verifying pre uploaded certificate.

```sql
EXEC azure.iot_hub_device_provisioning.dps_certificates.verify_certificate 
@certificateName='{{ certificateName }}' --required, 
@If-Match='{{ If-Match }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@provisioningServiceName='{{ provisioningServiceName }}' --required, 
@certificate.name='{{ certificate.name }}', 
@certificate.rawBytes='{{ certificate.rawBytes }}', 
@certificate.isVerified={{ certificate.isVerified }}, 
@certificate.purpose='{{ certificate.purpose }}', 
@certificate.created='{{ certificate.created }}', 
@certificate.lastUpdated='{{ certificate.lastUpdated }}', 
@certificate.hasPrivateKey={{ certificate.hasPrivateKey }}, 
@certificate.nonce='{{ certificate.nonce }}', 
@api-version='{{ api-version }}' 
@@json=
'{
"certificate": "{{ certificate }}"
}'
;
```
</TabItem>
</Tabs>
