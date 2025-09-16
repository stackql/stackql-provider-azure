--- 
title: protection_intents
hide_title: false
hide_table_of_contents: false
keywords:
  - protection_intents
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists a <code>protection_intents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>protection_intents</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.protection_intents" /></td></tr>
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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProtectionIntentResource properties</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-intentObjectName"><code>intentObjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Provides the details of the protection intent up item. This is an asynchronous operation. To know the status of the operation,<br />call the GetItemOperationResult API.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-intentObjectName"><code>intentObjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create Intent for Enabling backup of an item. This is a synchronous operation.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-intentObjectName"><code>intentObjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Used to remove intent from an item</td>
</tr>
<tr>
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-azureRegion"><code>azureRegion</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
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
<tr id="parameter-azureRegion">
    <td><CopyableCode code="azureRegion" /></td>
    <td><code>string</code></td>
    <td>Azure region to hit Api</td>
</tr>
<tr id="parameter-fabricName">
    <td><CopyableCode code="fabricName" /></td>
    <td><code>string</code></td>
    <td>Fabric name associated with the intent.</td>
</tr>
<tr id="parameter-intentObjectName">
    <td><CopyableCode code="intentObjectName" /></td>
    <td><code>string</code></td>
    <td>Intent to be deleted.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group where the recovery services vault is present.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
</tr>
<tr id="parameter-vaultName">
    <td><CopyableCode code="vaultName" /></td>
    <td><code>string</code></td>
    <td>The name of the recovery services vault.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
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

Provides the details of the protection intent up item. This is an asynchronous operation. To know the status of the operation,<br />call the GetItemOperationResult API.

```sql
SELECT
id,
name,
properties,
type
FROM azure.recovery_services_backup.protection_intents
WHERE vaultName = '{{ vaultName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND fabricName = '{{ fabricName }}' -- required
AND intentObjectName = '{{ intentObjectName }}' -- required
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

Create Intent for Enabling backup of an item. This is a synchronous operation.

```sql
INSERT INTO azure.recovery_services_backup.protection_intents (
data__properties,
vaultName,
resourceGroupName,
subscriptionId,
fabricName,
intentObjectName,
api-version
)
SELECT 
'{{ properties }}',
'{{ vaultName }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ fabricName }}',
'{{ intentObjectName }}',
'{{ api-version }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: protection_intents
  props:
    - name: vaultName
      value: string
      description: Required parameter for the protection_intents resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the protection_intents resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the protection_intents resource.
    - name: fabricName
      value: string
      description: Required parameter for the protection_intents resource.
    - name: intentObjectName
      value: string
      description: Required parameter for the protection_intents resource.
    - name: properties
      value: object
      description: |
        ProtectionIntentResource properties
    - name: api-version
      value: string
      description: Client Api Version.
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

Used to remove intent from an item

```sql
DELETE FROM azure.recovery_services_backup.protection_intents
WHERE vaultName = '{{ vaultName }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND fabricName = '{{ fabricName }}' --required
AND intentObjectName = '{{ intentObjectName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="validate"
    values={[
        { label: 'validate', value: 'validate' }
    ]}
>
<TabItem value="validate">

OK

```sql
EXEC azure.recovery_services_backup.protection_intents.validate 
@azureRegion='{{ azureRegion }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"resourceType": "{{ resourceType }}", 
"resourceId": "{{ resourceId }}", 
"vaultId": "{{ vaultId }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
