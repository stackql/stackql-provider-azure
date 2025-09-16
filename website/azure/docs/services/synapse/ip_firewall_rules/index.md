--- 
title: ip_firewall_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - ip_firewall_rules
  - synapse
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

Creates, updates, deletes, gets or lists an <code>ip_firewall_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ip_firewall_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.ip_firewall_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_workspace', value: 'list_by_workspace' }
    ]}
>
<TabItem value="get">

Ip Firewall Rule details

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
    <td>IP firewall rule properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_workspace">

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
    <td>IP firewall rule properties</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a></td>
    <td></td>
    <td>Get a firewall rule</td>
</tr>
<tr>
    <td><a href="#list_by_workspace"><CopyableCode code="list_by_workspace" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>Returns a list of firewall rules</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a></td>
    <td></td>
    <td>Creates or updates a firewall rule</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a></td>
    <td></td>
    <td>Deletes a firewall rule</td>
</tr>
<tr>
    <td><a href="#replace_all"><CopyableCode code="replace_all" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>Replaces firewall rules</td>
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
<tr id="parameter-ruleName">
    <td><CopyableCode code="ruleName" /></td>
    <td><code>string</code></td>
    <td>The IP firewall rule name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workspace.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_workspace', value: 'list_by_workspace' }
    ]}
>
<TabItem value="get">

Get a firewall rule

```sql
SELECT
properties
FROM azure.synapse.ip_firewall_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND ruleName = '{{ ruleName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_workspace">

Returns a list of firewall rules

```sql
SELECT
properties
FROM azure.synapse.ip_firewall_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
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

Creates or updates a firewall rule

```sql
INSERT INTO azure.synapse.ip_firewall_rules (
data__properties,
subscriptionId,
resourceGroupName,
workspaceName,
ruleName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ workspaceName }}',
'{{ ruleName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: ip_firewall_rules
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the ip_firewall_rules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the ip_firewall_rules resource.
    - name: workspaceName
      value: string
      description: Required parameter for the ip_firewall_rules resource.
    - name: ruleName
      value: string
      description: Required parameter for the ip_firewall_rules resource.
    - name: properties
      value: object
      description: |
        IP firewall rule properties
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

Deletes a firewall rule

```sql
DELETE FROM azure.synapse.ip_firewall_rules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND ruleName = '{{ ruleName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="replace_all"
    values={[
        { label: 'replace_all', value: 'replace_all' }
    ]}
>
<TabItem value="replace_all">

Replaces firewall rules

```sql
EXEC azure.synapse.ip_firewall_rules.replace_all 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workspaceName='{{ workspaceName }}' --required 
@@json=
'{
"ipFirewallRules": "{{ ipFirewallRules }}"
}'
;
```
</TabItem>
</Tabs>
