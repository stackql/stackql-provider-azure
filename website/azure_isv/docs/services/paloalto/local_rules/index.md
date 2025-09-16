--- 
title: local_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - local_rules
  - paloalto
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

Creates, updates, deletes, gets or lists a <code>local_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>local_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.local_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_local_rulestacks', value: 'list_by_local_rulestacks' }
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
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System metadata for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_local_rulestacks">

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
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System metadata for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a>, <a href="#parameter-priority"><code>priority</code></a></td>
    <td></td>
    <td>Get a LocalRulesResource</td>
</tr>
<tr>
    <td><a href="#list_by_local_rulestacks"><CopyableCode code="list_by_local_rulestacks" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a></td>
    <td></td>
    <td>List LocalRulesResource resources by LocalRulestacks</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a>, <a href="#parameter-priority"><code>priority</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a LocalRulesResource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a>, <a href="#parameter-priority"><code>priority</code></a></td>
    <td></td>
    <td>Delete a LocalRulesResource</td>
</tr>
<tr>
    <td><a href="#refresh_counters"><CopyableCode code="refresh_counters" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a>, <a href="#parameter-priority"><code>priority</code></a></td>
    <td><a href="#parameter-firewallName"><code>firewallName</code></a></td>
    <td>Refresh counters</td>
</tr>
<tr>
    <td><a href="#reset_counters"><CopyableCode code="reset_counters" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a>, <a href="#parameter-priority"><code>priority</code></a></td>
    <td><a href="#parameter-firewallName"><code>firewallName</code></a></td>
    <td>Reset counters</td>
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
<tr id="parameter-localRulestackName">
    <td><CopyableCode code="localRulestackName" /></td>
    <td><code>string</code></td>
    <td>LocalRulestack resource name</td>
</tr>
<tr id="parameter-priority">
    <td><CopyableCode code="priority" /></td>
    <td><code>string</code></td>
    <td>Local Rule priority</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-firewallName">
    <td><CopyableCode code="firewallName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_local_rulestacks', value: 'list_by_local_rulestacks' }
    ]}
>
<TabItem value="get">

Get a LocalRulesResource

```sql
SELECT
properties,
systemData
FROM azure_isv.paloalto.local_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND localRulestackName = '{{ localRulestackName }}' -- required
AND priority = '{{ priority }}' -- required
;
```
</TabItem>
<TabItem value="list_by_local_rulestacks">

List LocalRulesResource resources by LocalRulestacks

```sql
SELECT
properties,
systemData
FROM azure_isv.paloalto.local_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND localRulestackName = '{{ localRulestackName }}' -- required
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

Create a LocalRulesResource

```sql
INSERT INTO azure_isv.paloalto.local_rules (
data__properties,
subscriptionId,
resourceGroupName,
localRulestackName,
priority
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ localRulestackName }}',
'{{ priority }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: local_rules
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the local_rules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the local_rules resource.
    - name: localRulestackName
      value: string
      description: Required parameter for the local_rules resource.
    - name: priority
      value: string
      description: Required parameter for the local_rules resource.
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

Delete a LocalRulesResource

```sql
DELETE FROM azure_isv.paloalto.local_rules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND localRulestackName = '{{ localRulestackName }}' --required
AND priority = '{{ priority }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="refresh_counters"
    values={[
        { label: 'refresh_counters', value: 'refresh_counters' },
        { label: 'reset_counters', value: 'reset_counters' }
    ]}
>
<TabItem value="refresh_counters">

Refresh counters

```sql
EXEC azure_isv.paloalto.local_rules.refresh_counters 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@localRulestackName='{{ localRulestackName }}' --required, 
@priority='{{ priority }}' --required, 
@firewallName='{{ firewallName }}'
;
```
</TabItem>
<TabItem value="reset_counters">

Reset counters

```sql
EXEC azure_isv.paloalto.local_rules.reset_counters 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@localRulestackName='{{ localRulestackName }}' --required, 
@priority='{{ priority }}' --required, 
@firewallName='{{ firewallName }}'
;
```
</TabItem>
</Tabs>
