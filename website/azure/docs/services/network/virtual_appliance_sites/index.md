--- 
title: virtual_appliance_sites
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_appliance_sites
  - network
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

Creates, updates, deletes, gets or lists a <code>virtual_appliance_sites</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_appliance_sites</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.virtual_appliance_sites" /></td></tr>
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

Request successful. The operation returns a Network Virtual Appliance Site resource.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the virtual appliance site.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the Virtual Appliance Sites.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Site type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Success. The operation returns a list of Network Virtual Appliance site resources.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the virtual appliance site.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the Virtual Appliance Sites.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Site type.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkVirtualApplianceName"><code>networkVirtualApplianceName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the specified Virtual Appliance Site.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkVirtualApplianceName"><code>networkVirtualApplianceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all Network Virtual Appliance Sites in a Network Virtual Appliance resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkVirtualApplianceName"><code>networkVirtualApplianceName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates the specified Network Virtual Appliance Site.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkVirtualApplianceName"><code>networkVirtualApplianceName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified site from a Virtual Appliance.</td>
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
<tr id="parameter-networkVirtualApplianceName">
    <td><CopyableCode code="networkVirtualApplianceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Network Virtual Appliance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-siteName">
    <td><CopyableCode code="siteName" /></td>
    <td><code>string</code></td>
    <td>The name of the site.</td>
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
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the specified Virtual Appliance Site.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.virtual_appliance_sites
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkVirtualApplianceName = '{{ networkVirtualApplianceName }}' -- required
AND siteName = '{{ siteName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all Network Virtual Appliance Sites in a Network Virtual Appliance resource.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.virtual_appliance_sites
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkVirtualApplianceName = '{{ networkVirtualApplianceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates the specified Network Virtual Appliance Site.

```sql
INSERT INTO azure.network.virtual_appliance_sites (
data__properties,
data__name,
data__id,
resourceGroupName,
networkVirtualApplianceName,
siteName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ id }}',
'{{ resourceGroupName }}',
'{{ networkVirtualApplianceName }}',
'{{ siteName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_appliance_sites
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_appliance_sites resource.
    - name: networkVirtualApplianceName
      value: string
      description: Required parameter for the virtual_appliance_sites resource.
    - name: siteName
      value: string
      description: Required parameter for the virtual_appliance_sites resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the virtual_appliance_sites resource.
    - name: properties
      value: object
      description: |
        The properties of the Virtual Appliance Sites.
    - name: name
      value: string
      description: |
        Name of the virtual appliance site.
    - name: id
      value: string
      description: |
        Resource ID.
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

Deletes the specified site from a Virtual Appliance.

```sql
DELETE FROM azure.network.virtual_appliance_sites
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND networkVirtualApplianceName = '{{ networkVirtualApplianceName }}' --required
AND siteName = '{{ siteName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
