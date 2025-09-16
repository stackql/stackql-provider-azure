--- 
title: component_linked_storage_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - component_linked_storage_accounts
  - application_insights
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

Creates, updates, deletes, gets or lists a <code>component_linked_storage_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>component_linked_storage_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.component_linked_storage_accounts" /></td></tr>
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

An Application Insights component linked storage accounts.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the linked storage accounts.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-storageType"><code>storageType</code></a></td>
    <td></td>
    <td>Returns the current linked storage settings for an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#create_and_update"><CopyableCode code="create_and_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-storageType"><code>storageType</code></a></td>
    <td></td>
    <td>Replace current linked storage account for an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-storageType"><code>storageType</code></a></td>
    <td></td>
    <td>Update linked storage accounts for an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-storageType"><code>storageType</code></a></td>
    <td></td>
    <td>Delete linked storage accounts for an Application Insights component.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights component resource.</td>
</tr>
<tr id="parameter-storageType">
    <td><CopyableCode code="storageType" /></td>
    <td><code>string</code></td>
    <td>The type of the Application Insights component data source for the linked storage account.</td>
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

Returns the current linked storage settings for an Application Insights component.

```sql
SELECT
properties
FROM azure.application_insights.component_linked_storage_accounts
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND storageType = '{{ storageType }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_and_update"
    values={[
        { label: 'create_and_update', value: 'create_and_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_and_update">

Replace current linked storage account for an Application Insights component.

```sql
INSERT INTO azure.application_insights.component_linked_storage_accounts (
data__properties,
resourceGroupName,
subscriptionId,
resourceName,
storageType
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ resourceName }}',
'{{ storageType }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: component_linked_storage_accounts
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the component_linked_storage_accounts resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the component_linked_storage_accounts resource.
    - name: resourceName
      value: string
      description: Required parameter for the component_linked_storage_accounts resource.
    - name: storageType
      value: string
      description: Required parameter for the component_linked_storage_accounts resource.
    - name: properties
      value: object
      description: |
        The properties of the linked storage accounts.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update linked storage accounts for an Application Insights component.

```sql
UPDATE azure.application_insights.component_linked_storage_accounts
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceName = '{{ resourceName }}' --required
AND storageType = '{{ storageType }}' --required
RETURNING
properties;
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

Delete linked storage accounts for an Application Insights component.

```sql
DELETE FROM azure.application_insights.component_linked_storage_accounts
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceName = '{{ resourceName }}' --required
AND storageType = '{{ storageType }}' --required
;
```
</TabItem>
</Tabs>
