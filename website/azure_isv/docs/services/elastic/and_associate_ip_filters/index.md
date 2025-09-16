--- 
title: and_associate_ip_filters
hide_title: false
hide_table_of_contents: false
keywords:
  - and_associate_ip_filters
  - elastic
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

Creates, updates, deletes, gets or lists an <code>and_associate_ip_filters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>and_associate_ip_filters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.elastic.and_associate_ip_filters" /></td></tr>
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
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a></td>
    <td><a href="#parameter-ips"><code>ips</code></a>, <a href="#parameter-name"><code>name</code></a></td>
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
<tr id="parameter-monitorName">
    <td><CopyableCode code="monitorName" /></td>
    <td><code>string</code></td>
    <td>Monitor resource name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-ips">
    <td><CopyableCode code="ips" /></td>
    <td><code>string</code></td>
    <td>List of ips</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the traffic filter</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

No description available.

```sql
INSERT INTO azure_isv.elastic.and_associate_ip_filters (
subscriptionId,
resourceGroupName,
monitorName,
ips,
name
)
SELECT 
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ monitorName }}',
'{{ ips }}',
'{{ name }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: and_associate_ip_filters
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the and_associate_ip_filters resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the and_associate_ip_filters resource.
    - name: monitorName
      value: string
      description: Required parameter for the and_associate_ip_filters resource.
    - name: ips
      value: string
      description: List of ips
    - name: name
      value: string
      description: Name of the traffic filter
```
</TabItem>
</Tabs>
