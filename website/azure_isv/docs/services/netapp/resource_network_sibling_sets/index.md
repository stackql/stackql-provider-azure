--- 
title: resource_network_sibling_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - resource_network_sibling_sets
  - netapp
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>resource_network_sibling_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>resource_network_sibling_sets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.resource_network_sibling_sets" /></td></tr>
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
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-networkSiblingSetId"><code>networkSiblingSetId</code></a>, <a href="#parameter-subnetId"><code>subnetId</code></a>, <a href="#parameter-networkSiblingSetStateId"><code>networkSiblingSetStateId</code></a>, <a href="#parameter-networkFeatures"><code>networkFeatures</code></a></td>
    <td></td>
    <td>Update the network features of the specified network sibling set.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure region.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update the network features of the specified network sibling set.

```sql
EXEC azure_isv.netapp.resource_network_sibling_sets.update 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"networkSiblingSetId": "{{ networkSiblingSetId }}", 
"subnetId": "{{ subnetId }}", 
"networkSiblingSetStateId": "{{ networkSiblingSetStateId }}", 
"networkFeatures": "{{ networkFeatures }}"
}'
;
```
</TabItem>
</Tabs>
