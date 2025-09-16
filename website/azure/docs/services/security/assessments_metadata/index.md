--- 
title: assessments_metadata
hide_title: false
hide_table_of_contents: false
keywords:
  - assessments_metadata
  - security
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

Creates, updates, deletes, gets or lists an <code>assessments_metadata</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>assessments_metadata</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.assessments_metadata" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_in_subscription"
    values={[
        { label: 'get_in_subscription', value: 'get_in_subscription' },
        { label: 'get', value: 'get' },
        { label: 'list_by_subscription', value: 'list_by_subscription' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_in_subscription">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes properties of an assessment metadata response.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes properties of an assessment metadata response.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes properties of an assessment metadata response.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes properties of an assessment metadata response.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#get_in_subscription"><CopyableCode code="get_in_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-assessmentMetadataName"><code>assessmentMetadataName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get metadata information on an assessment type in a specific subscription</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-assessmentMetadataName"><code>assessmentMetadataName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get metadata information on an assessment type</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get metadata information on all assessment types in a specific subscription</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get metadata information on all assessment types</td>
</tr>
<tr>
    <td><a href="#create_in_subscription"><CopyableCode code="create_in_subscription" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-assessmentMetadataName"><code>assessmentMetadataName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create metadata information on an assessment type in a specific subscription</td>
</tr>
<tr>
    <td><a href="#delete_in_subscription"><CopyableCode code="delete_in_subscription" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-assessmentMetadataName"><code>assessmentMetadataName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete metadata information on an assessment type in a specific subscription, will cause the deletion of all the assessments of that type in that subscription</td>
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
<tr id="parameter-assessmentMetadataName">
    <td><CopyableCode code="assessmentMetadataName" /></td>
    <td><code>string</code></td>
    <td>The Assessment Key - Unique key for the assessment type</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription ID</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>API version for the operation</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_in_subscription"
    values={[
        { label: 'get_in_subscription', value: 'get_in_subscription' },
        { label: 'get', value: 'get' },
        { label: 'list_by_subscription', value: 'list_by_subscription' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_in_subscription">

Get metadata information on an assessment type in a specific subscription

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.security.assessments_metadata
WHERE assessmentMetadataName = '{{ assessmentMetadataName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="get">

Get metadata information on an assessment type

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.security.assessments_metadata
WHERE assessmentMetadataName = '{{ assessmentMetadataName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Get metadata information on all assessment types in a specific subscription

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.security.assessments_metadata
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Get metadata information on all assessment types

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.security.assessments_metadata
WHERE api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_in_subscription"
    values={[
        { label: 'create_in_subscription', value: 'create_in_subscription' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_in_subscription">

Create metadata information on an assessment type in a specific subscription

```sql
INSERT INTO azure.security.assessments_metadata (
data__properties,
assessmentMetadataName,
subscriptionId,
api-version
)
SELECT 
'{{ properties }}',
'{{ assessmentMetadataName }}',
'{{ subscriptionId }}',
'{{ api-version }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: assessments_metadata
  props:
    - name: assessmentMetadataName
      value: string
      description: Required parameter for the assessments_metadata resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the assessments_metadata resource.
    - name: properties
      value: object
      description: |
        Describes properties of an assessment metadata response.
    - name: api-version
      value: string
      description: API version for the operation
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_in_subscription"
    values={[
        { label: 'delete_in_subscription', value: 'delete_in_subscription' }
    ]}
>
<TabItem value="delete_in_subscription">

Delete metadata information on an assessment type in a specific subscription, will cause the deletion of all the assessments of that type in that subscription

```sql
DELETE FROM azure.security.assessments_metadata
WHERE assessmentMetadataName = '{{ assessmentMetadataName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
