--- 
title: tenant_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - tenant_configurations
  - portal
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

Creates, updates, deletes, gets or lists a <code>tenant_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tenant_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.portal.tenant_configurations" /></td></tr>
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

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-configurationName"><code>configurationName</code></a></td>
    <td></td>
    <td>Gets the tenant configuration.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Gets list of the tenant configurations.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-configurationName"><code>configurationName</code></a></td>
    <td></td>
    <td>Create the tenant configuration. If configuration already exists - update it. User has to be a Tenant Admin for this operation.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-configurationName"><code>configurationName</code></a></td>
    <td></td>
    <td>Delete the tenant configuration. User has to be a Tenant Admin for this operation.</td>
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
<tr id="parameter-configurationName">
    <td><CopyableCode code="configurationName" /></td>
    <td><code>string</code></td>
    <td>The name of the Configuration</td>
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

Gets the tenant configuration.

```sql
SELECT
properties
FROM azure.portal.tenant_configurations
WHERE configurationName = '{{ configurationName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets list of the tenant configurations.

```sql
SELECT
properties
FROM azure.portal.tenant_configurations
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create the tenant configuration. If configuration already exists - update it. User has to be a Tenant Admin for this operation.

```sql
INSERT INTO azure.portal.tenant_configurations (
data__properties,
configurationName
)
SELECT 
'{{ properties }}',
'{{ configurationName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: tenant_configurations
  props:
    - name: configurationName
      value: string
      description: Required parameter for the tenant_configurations resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Delete the tenant configuration. User has to be a Tenant Admin for this operation.

```sql
DELETE FROM azure.portal.tenant_configurations
WHERE configurationName = '{{ configurationName }}' --required
;
```
</TabItem>
</Tabs>
