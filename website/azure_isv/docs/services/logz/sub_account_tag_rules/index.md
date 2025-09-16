--- 
title: sub_account_tag_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - sub_account_tag_rules
  - logz
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

Creates, updates, deletes, gets or lists a <code>sub_account_tag_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sub_account_tag_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.logz.sub_account_tag_rules" /></td></tr>
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
    <td>The id of the rule set.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule set.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Definition of the properties for a TagRules resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the rule set.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td>The id of the rule set.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule set.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Definition of the properties for a TagRules resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the rule set.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-subAccountName"><code>subAccountName</code></a>, <a href="#parameter-ruleSetName"><code>ruleSetName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-subAccountName"><code>subAccountName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-subAccountName"><code>subAccountName</code></a>, <a href="#parameter-ruleSetName"><code>ruleSetName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-subAccountName"><code>subAccountName</code></a>, <a href="#parameter-ruleSetName"><code>ruleSetName</code></a></td>
    <td></td>
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
<tr id="parameter-ruleSetName">
    <td><CopyableCode code="ruleSetName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-subAccountName">
    <td><CopyableCode code="subAccountName" /></td>
    <td><code>string</code></td>
    <td>Sub Account resource name</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Success

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_isv.logz.sub_account_tag_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND monitorName = '{{ monitorName }}' -- required
AND subAccountName = '{{ subAccountName }}' -- required
AND ruleSetName = '{{ ruleSetName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Success

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_isv.logz.sub_account_tag_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND monitorName = '{{ monitorName }}' -- required
AND subAccountName = '{{ subAccountName }}' -- required
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

No description available.

```sql
INSERT INTO azure_isv.logz.sub_account_tag_rules (
data__properties,
subscriptionId,
resourceGroupName,
monitorName,
subAccountName,
ruleSetName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ monitorName }}',
'{{ subAccountName }}',
'{{ ruleSetName }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: sub_account_tag_rules
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the sub_account_tag_rules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the sub_account_tag_rules resource.
    - name: monitorName
      value: string
      description: Required parameter for the sub_account_tag_rules resource.
    - name: subAccountName
      value: string
      description: Required parameter for the sub_account_tag_rules resource.
    - name: ruleSetName
      value: string
      description: Required parameter for the sub_account_tag_rules resource.
    - name: properties
      value: object
      description: |
        Definition of the properties for a TagRules resource.
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

No description available.

```sql
DELETE FROM azure_isv.logz.sub_account_tag_rules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND monitorName = '{{ monitorName }}' --required
AND subAccountName = '{{ subAccountName }}' --required
AND ruleSetName = '{{ ruleSetName }}' --required
;
```
</TabItem>
</Tabs>
