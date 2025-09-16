--- 
title: by_ids
hide_title: false
hide_table_of_contents: false
keywords:
  - by_ids
  - resources
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

Creates, updates, deletes, gets or lists a <code>by_ids</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>by_ids</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resources.by_ids" /></td></tr>
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
    <td><a href="#parameter-resourceId"><code>resourceId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create a resource by ID.</td>
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
<tr id="parameter-resourceId">
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>The fully qualified ID of the resource, including the resource name and resource type. Use the format, /subscriptions/&#123;guid&#125;/resourceGroups/&#123;resource-group-name&#125;/&#123;resource-provider-namespace&#125;/&#123;resource-type&#125;/&#123;resource-name&#125;</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version to use for the operation.</td>
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

Create a resource by ID.

```sql
INSERT INTO azure.resources.by_ids (
data__plan,
data__properties,
data__kind,
data__managedBy,
data__sku,
data__identity,
resourceId,
api-version
)
SELECT 
'{{ plan }}',
'{{ properties }}',
'{{ kind }}',
'{{ managedBy }}',
'{{ sku }}',
'{{ identity }}',
'{{ resourceId }}',
'{{ api-version }}'
RETURNING
id,
name,
identity,
kind,
managedBy,
plan,
properties,
sku,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: by_ids
  props:
    - name: resourceId
      value: string
      description: Required parameter for the by_ids resource.
    - name: plan
      value: object
      description: |
        Plan for the resource.
    - name: properties
      value: object
      description: |
        The resource properties.
    - name: kind
      value: string
      description: |
        The kind of the resource.
    - name: managedBy
      value: string
      description: |
        ID of the resource that manages this resource.
    - name: sku
      value: object
      description: |
        The resource model definition representing SKU
    - name: identity
      value: object
      description: |
        The identity of the resource.
    - name: api-version
      value: string
      description: The API version to use for the operation.
```
</TabItem>
</Tabs>
