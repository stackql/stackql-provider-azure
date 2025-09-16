--- 
title: apply_updates_or_cancels
hide_title: false
hide_table_of_contents: false
keywords:
  - apply_updates_or_cancels
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

Creates, updates, deletes, gets or lists an <code>apply_updates_or_cancels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>apply_updates_or_cancels</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maintenance.apply_updates_or_cancels" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-applyUpdateName"><code>applyUpdateName</code></a></td>
    <td></td>
    <td>Apply maintenance updates to resource</td>
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
    <td>ApplyUpdate name</td>
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

## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Apply maintenance updates to resource

```sql
INSERT INTO azure.maintenance.apply_updates_or_cancels (
data__properties,
subscriptionId,
resourceGroupName,
providerName,
resourceType,
resourceName,
applyUpdateName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ providerName }}',
'{{ resourceType }}',
'{{ resourceName }}',
'{{ applyUpdateName }}'
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
- name: apply_updates_or_cancels
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the apply_updates_or_cancels resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the apply_updates_or_cancels resource.
    - name: providerName
      value: string
      description: Required parameter for the apply_updates_or_cancels resource.
    - name: resourceType
      value: string
      description: Required parameter for the apply_updates_or_cancels resource.
    - name: resourceName
      value: string
      description: Required parameter for the apply_updates_or_cancels resource.
    - name: applyUpdateName
      value: string
      description: Required parameter for the apply_updates_or_cancels resource.
    - name: properties
      value: object
      description: |
        Properties of the apply update
```
</TabItem>
</Tabs>
