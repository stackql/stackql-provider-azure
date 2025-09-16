--- 
title: applications_by_ids
hide_title: false
hide_table_of_contents: false
keywords:
  - applications_by_ids
  - managed_applications
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

Creates, updates, deletes, gets or lists an <code>applications_by_ids</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>applications_by_ids</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_applications.applications_by_ids" /></td></tr>
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
    <td><a href="#parameter-applicationId"><code>applicationId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a>, <a href="#parameter-data__kind"><code>data__kind</code></a></td>
    <td></td>
    <td>Creates or updates a managed application.</td>
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
<tr id="parameter-applicationId">
    <td><CopyableCode code="applicationId" /></td>
    <td><code>string</code></td>
    <td>The fully qualified ID of the managed application, including the managed application name and the managed application resource type. Use the format, /subscriptions/&#123;guid&#125;/resourceGroups/&#123;resource-group-name&#125;/Microsoft.Solutions/applications/&#123;application-name&#125;</td>
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

Creates or updates a managed application.

```sql
INSERT INTO azure.managed_applications.applications_by_ids (
data__properties,
data__plan,
data__kind,
data__identity,
data__managedBy,
data__sku,
applicationId
)
SELECT 
'{{ properties }}' /* required */,
'{{ plan }}',
'{{ kind }}' /* required */,
'{{ identity }}',
'{{ managedBy }}',
'{{ sku }}',
'{{ applicationId }}'
RETURNING
identity,
kind,
managedBy,
plan,
properties,
sku
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: applications_by_ids
  props:
    - name: applicationId
      value: string
      description: Required parameter for the applications_by_ids resource.
    - name: properties
      value: object
      description: |
        The managed application properties.
    - name: plan
      value: object
      description: |
        The plan information.
    - name: kind
      value: string
      description: |
        The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
    - name: identity
      value: object
      description: |
        The identity of the resource.
    - name: managedBy
      value: string
      description: |
        ID of the resource that manages this resource.
    - name: sku
      value: object
      description: |
        The SKU of the resource.
```
</TabItem>
</Tabs>
