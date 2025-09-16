--- 
title: firewall_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - firewall_rules
  - mongo_db
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

Creates, updates, deletes, gets or lists a <code>firewall_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>firewall_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.mongo_db.firewall_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_mongo_cluster', value: 'list_by_mongo_cluster' }
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
<TabItem value="list_by_mongo_cluster">

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mongoClusterName"><code>mongoClusterName</code></a>, <a href="#parameter-firewallRuleName"><code>firewallRuleName</code></a></td>
    <td></td>
    <td>Gets information about a mongo cluster firewall rule.</td>
</tr>
<tr>
    <td><a href="#list_by_mongo_cluster"><CopyableCode code="list_by_mongo_cluster" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mongoClusterName"><code>mongoClusterName</code></a></td>
    <td></td>
    <td>List all the firewall rules in a given mongo cluster.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mongoClusterName"><code>mongoClusterName</code></a>, <a href="#parameter-firewallRuleName"><code>firewallRuleName</code></a></td>
    <td></td>
    <td>Creates a new firewall rule or updates an existing firewall rule on a mongo cluster.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mongoClusterName"><code>mongoClusterName</code></a>, <a href="#parameter-firewallRuleName"><code>firewallRuleName</code></a></td>
    <td></td>
    <td>Deletes a mongo cluster firewall rule.</td>
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
<tr id="parameter-firewallRuleName">
    <td><CopyableCode code="firewallRuleName" /></td>
    <td><code>string</code></td>
    <td>The name of the mongo cluster firewall rule.</td>
</tr>
<tr id="parameter-mongoClusterName">
    <td><CopyableCode code="mongoClusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the mongo cluster.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_mongo_cluster', value: 'list_by_mongo_cluster' }
    ]}
>
<TabItem value="get">

Gets information about a mongo cluster firewall rule.

```sql
SELECT
properties
FROM azure_isv.mongo_db.firewall_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND mongoClusterName = '{{ mongoClusterName }}' -- required
AND firewallRuleName = '{{ firewallRuleName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_mongo_cluster">

List all the firewall rules in a given mongo cluster.

```sql
SELECT
properties
FROM azure_isv.mongo_db.firewall_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND mongoClusterName = '{{ mongoClusterName }}' -- required
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

Creates a new firewall rule or updates an existing firewall rule on a mongo cluster.

```sql
INSERT INTO azure_isv.mongo_db.firewall_rules (
data__properties,
subscriptionId,
resourceGroupName,
mongoClusterName,
firewallRuleName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ mongoClusterName }}',
'{{ firewallRuleName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: firewall_rules
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the firewall_rules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the firewall_rules resource.
    - name: mongoClusterName
      value: string
      description: Required parameter for the firewall_rules resource.
    - name: firewallRuleName
      value: string
      description: Required parameter for the firewall_rules resource.
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

Deletes a mongo cluster firewall rule.

```sql
DELETE FROM azure_isv.mongo_db.firewall_rules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND mongoClusterName = '{{ mongoClusterName }}' --required
AND firewallRuleName = '{{ firewallRuleName }}' --required
;
```
</TabItem>
</Tabs>
