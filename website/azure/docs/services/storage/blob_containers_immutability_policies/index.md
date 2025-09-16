--- 
title: blob_containers_immutability_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - blob_containers_immutability_policies
  - storage
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

Creates, updates, deletes, gets or lists a <code>blob_containers_immutability_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>blob_containers_immutability_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.blob_containers_immutability_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

OK -- Gets container ImmutabilityPolicy operation completed successfully.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of an ImmutabilityPolicy of a blob container.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-immutabilityPolicyName"><code>immutabilityPolicyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Gets the existing immutability policy along with the corresponding ETag in response headers and body.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-immutabilityPolicyName"><code>immutabilityPolicyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Creates or updates an unlocked immutability policy. ETag in If-Match is honored if given but not required for this operation.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-immutabilityPolicyName"><code>immutabilityPolicyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td></td>
    <td>Aborts an unlocked immutability policy. The response of delete has immutabilityPeriodSinceCreationInDays set to 0. ETag in If-Match is required for this operation. Deleting a locked immutability policy is not allowed, the only way is to delete the container after deleting all expired blobs inside the policy locked container.</td>
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
    <td>The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service.</td>
</tr>
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.</td>
</tr>
<tr id="parameter-containerName">
    <td><CopyableCode code="containerName" /></td>
    <td><code>string</code></td>
    <td>The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.</td>
</tr>
<tr id="parameter-immutabilityPolicyName">
    <td><CopyableCode code="immutabilityPolicyName" /></td>
    <td><code>string</code></td>
    <td>The name of the blob container immutabilityPolicy within the specified storage account. ImmutabilityPolicy Name must be 'default'</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the user's subscription. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets the existing immutability policy along with the corresponding ETag in response headers and body.

```sql
SELECT
etag,
properties
FROM azure.storage.blob_containers_immutability_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND containerName = '{{ containerName }}' -- required
AND immutabilityPolicyName = '{{ immutabilityPolicyName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND If-Match = '{{ If-Match }}'
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

Creates or updates an unlocked immutability policy. ETag in If-Match is honored if given but not required for this operation.

```sql
INSERT INTO azure.storage.blob_containers_immutability_policies (
data__properties,
resourceGroupName,
accountName,
containerName,
immutabilityPolicyName,
subscriptionId,
If-Match
)
SELECT 
'{{ properties }}' /* required */,
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ containerName }}',
'{{ immutabilityPolicyName }}',
'{{ subscriptionId }}',
'{{ If-Match }}'
RETURNING
etag,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: blob_containers_immutability_policies
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the blob_containers_immutability_policies resource.
    - name: accountName
      value: string
      description: Required parameter for the blob_containers_immutability_policies resource.
    - name: containerName
      value: string
      description: Required parameter for the blob_containers_immutability_policies resource.
    - name: immutabilityPolicyName
      value: string
      description: Required parameter for the blob_containers_immutability_policies resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the blob_containers_immutability_policies resource.
    - name: properties
      value: object
      description: |
        The properties of an ImmutabilityPolicy of a blob container.
    - name: If-Match
      value: string
      description: The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service.
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

Aborts an unlocked immutability policy. The response of delete has immutabilityPeriodSinceCreationInDays set to 0. ETag in If-Match is required for this operation. Deleting a locked immutability policy is not allowed, the only way is to delete the container after deleting all expired blobs inside the policy locked container.

```sql
DELETE FROM azure.storage.blob_containers_immutability_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND containerName = '{{ containerName }}' --required
AND immutabilityPolicyName = '{{ immutabilityPolicyName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND If-Match = '{{ If-Match }}' --required
;
```
</TabItem>
</Tabs>
