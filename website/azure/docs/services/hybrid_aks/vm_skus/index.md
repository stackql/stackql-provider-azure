--- 
title: vm_skus
hide_title: false
hide_table_of_contents: false
keywords:
  - vm_skus
  - hybrid_aks
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

Creates, updates, deletes, gets or lists a <code>vm_skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vm_skus</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_aks.vm_skus" /></td></tr>
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

Lists the supported VM skus for the specified custom location

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Extended location pointing to the underlying infrastructure</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Lists the supported VM skus for the specified custom location

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Extended location pointing to the underlying infrastructure</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
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
    <td><a href="#parameter-customLocationResourceUri"><code>customLocationResourceUri</code></a></td>
    <td></td>
    <td>Lists the supported VM skus for the specified custom location</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-customLocationResourceUri"><code>customLocationResourceUri</code></a></td>
    <td></td>
    <td>Lists the supported VM skus for the specified custom location</td>
</tr>
<tr>
    <td><a href="#put"><CopyableCode code="put" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-customLocationResourceUri"><code>customLocationResourceUri</code></a></td>
    <td></td>
    <td>Puts the default VM skus resource type (one time operation, before listing the VM skus)</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-customLocationResourceUri"><code>customLocationResourceUri</code></a></td>
    <td></td>
    <td>Deletes the default VM skus resource type</td>
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
<tr id="parameter-customLocationResourceUri">
    <td><CopyableCode code="customLocationResourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource Manager identifier of the custom location resource.</td>
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

Lists the supported VM skus for the specified custom location

```sql
SELECT
extendedLocation,
properties
FROM azure.hybrid_aks.vm_skus
WHERE customLocationResourceUri = '{{ customLocationResourceUri }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists the supported VM skus for the specified custom location

```sql
SELECT
extendedLocation,
properties
FROM azure.hybrid_aks.vm_skus
WHERE customLocationResourceUri = '{{ customLocationResourceUri }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="put"
    values={[
        { label: 'put', value: 'put' }
    ]}
>
<TabItem value="put">

Puts the default VM skus resource type (one time operation, before listing the VM skus)

```sql
REPLACE azure.hybrid_aks.vm_skus
SET 
data__extendedLocation = '{{ extendedLocation }}'
WHERE 
customLocationResourceUri = '{{ customLocationResourceUri }}' --required
RETURNING
extendedLocation,
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

Deletes the default VM skus resource type

```sql
DELETE FROM azure.hybrid_aks.vm_skus
WHERE customLocationResourceUri = '{{ customLocationResourceUri }}' --required
;
```
</TabItem>
</Tabs>
