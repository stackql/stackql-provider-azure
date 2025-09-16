--- 
title: fqdn_list_local_rulestacks
hide_title: false
hide_table_of_contents: false
keywords:
  - fqdn_list_local_rulestacks
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

Creates, updates, deletes, gets or lists a <code>fqdn_list_local_rulestacks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>fqdn_list_local_rulestacks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.fqdn_list_local_rulestacks" /></td></tr>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Get a FqdnListLocalRulestackResource</td>
</tr>
<tr>
    <td><a href="#list_by_local_rulestacks"><CopyableCode code="list_by_local_rulestacks" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a></td>
    <td></td>
    <td>List FqdnListLocalRulestackResource resources by LocalRulestacks</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a FqdnListLocalRulestackResource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-localRulestackName"><code>localRulestackName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Delete a FqdnListLocalRulestackResource</td>
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
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>fqdn list name</td>
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

Get a FqdnListLocalRulestackResource

```sql
SELECT
properties,
systemData
FROM azure_isv.paloalto.fqdn_list_local_rulestacks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND localRulestackName = '{{ localRulestackName }}' -- required
AND name = '{{ name }}' -- required
;
```
</TabItem>
<TabItem value="list_by_local_rulestacks">

List FqdnListLocalRulestackResource resources by LocalRulestacks

```sql
SELECT
properties,
systemData
FROM azure_isv.paloalto.fqdn_list_local_rulestacks
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

Create a FqdnListLocalRulestackResource

```sql
INSERT INTO azure_isv.paloalto.fqdn_list_local_rulestacks (
data__properties,
subscriptionId,
resourceGroupName,
localRulestackName,
name
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ localRulestackName }}',
'{{ name }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: fqdn_list_local_rulestacks
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the fqdn_list_local_rulestacks resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the fqdn_list_local_rulestacks resource.
    - name: localRulestackName
      value: string
      description: Required parameter for the fqdn_list_local_rulestacks resource.
    - name: name
      value: string
      description: Required parameter for the fqdn_list_local_rulestacks resource.
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

Delete a FqdnListLocalRulestackResource

```sql
DELETE FROM azure_isv.paloalto.fqdn_list_local_rulestacks
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND localRulestackName = '{{ localRulestackName }}' --required
AND name = '{{ name }}' --required
;
```
</TabItem>
</Tabs>
