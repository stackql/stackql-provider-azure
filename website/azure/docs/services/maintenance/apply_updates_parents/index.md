--- 
title: apply_updates_parents
hide_title: false
hide_table_of_contents: false
keywords:
  - apply_updates_parents
  - maintenance
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

Creates, updates, deletes, gets or lists an <code>apply_updates_parents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>apply_updates_parents</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maintenance.apply_updates_parents" /></td></tr>
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
    <td>Properties of the apply update</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a>, <a href="#parameter-resourceParentType"><code>resourceParentType</code></a>, <a href="#parameter-resourceParentName"><code>resourceParentName</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-applyUpdateName"><code>applyUpdateName</code></a></td>
    <td></td>
    <td>Track maintenance updates to resource with parent</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a>, <a href="#parameter-resourceParentType"><code>resourceParentType</code></a>, <a href="#parameter-resourceParentName"><code>resourceParentName</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Apply maintenance updates to resource with parent</td>
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
<tr id="parameter-applyUpdateName">
    <td><CopyableCode code="applyUpdateName" /></td>
    <td><code>string</code></td>
    <td>applyUpdate Id</td>
</tr>
<tr id="parameter-providerName">
    <td><CopyableCode code="providerName" /></td>
    <td><code>string</code></td>
    <td>Resource provider name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Resource group name</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>Resource identifier</td>
</tr>
<tr id="parameter-resourceParentName">
    <td><CopyableCode code="resourceParentName" /></td>
    <td><code>string</code></td>
    <td>Resource parent identifier</td>
</tr>
<tr id="parameter-resourceParentType">
    <td><CopyableCode code="resourceParentType" /></td>
    <td><code>string</code></td>
    <td>Resource parent type</td>
</tr>
<tr id="parameter-resourceType">
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
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

Track maintenance updates to resource with parent

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.maintenance.apply_updates_parents
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND providerName = '{{ providerName }}' -- required
AND resourceParentType = '{{ resourceParentType }}' -- required
AND resourceParentName = '{{ resourceParentName }}' -- required
AND resourceType = '{{ resourceType }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND applyUpdateName = '{{ applyUpdateName }}' -- required
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

Apply maintenance updates to resource with parent

```sql
INSERT INTO azure.maintenance.apply_updates_parents (
subscriptionId,
resourceGroupName,
providerName,
resourceParentType,
resourceParentName,
resourceType,
resourceName
)
SELECT 
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ providerName }}',
'{{ resourceParentType }}',
'{{ resourceParentName }}',
'{{ resourceType }}',
'{{ resourceName }}'
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
- name: apply_updates_parents
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the apply_updates_parents resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the apply_updates_parents resource.
    - name: providerName
      value: string
      description: Required parameter for the apply_updates_parents resource.
    - name: resourceParentType
      value: string
      description: Required parameter for the apply_updates_parents resource.
    - name: resourceParentName
      value: string
      description: Required parameter for the apply_updates_parents resource.
    - name: resourceType
      value: string
      description: Required parameter for the apply_updates_parents resource.
    - name: resourceName
      value: string
      description: Required parameter for the apply_updates_parents resource.
```
</TabItem>
</Tabs>
