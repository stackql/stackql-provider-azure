--- 
title: androids
hide_title: false
hide_table_of_contents: false
keywords:
  - androids
  - intune
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>androids</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>androids</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.intune.androids" /></td></tr>
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
    <td><a href="#patch_mam_policy"><CopyableCode code="patch_mam_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-hostName"><code>hostName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a></td>
    <td></td>
    <td>Patch AndroidMAMPolicy.</td>
</tr>
<tr>
    <td><a href="#add_app_for_mam_policy"><CopyableCode code="add_app_for_mam_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-hostName"><code>hostName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a>, <a href="#parameter-appName"><code>appName</code></a></td>
    <td></td>
    <td>Add app to an AndroidMAMPolicy.</td>
</tr>
<tr>
    <td><a href="#add_group_for_mam_policy"><CopyableCode code="add_group_for_mam_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-hostName"><code>hostName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a>, <a href="#parameter-groupId"><code>groupId</code></a></td>
    <td></td>
    <td>Add group to an AndroidMAMPolicy.</td>
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
<tr id="parameter-appName">
    <td><CopyableCode code="appName" /></td>
    <td><code>string</code></td>
    <td>application unique Name</td>
</tr>
<tr id="parameter-groupId">
    <td><CopyableCode code="groupId" /></td>
    <td><code>string</code></td>
    <td>group Id</td>
</tr>
<tr id="parameter-hostName">
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Location hostName for the tenant</td>
</tr>
<tr id="parameter-policyName">
    <td><CopyableCode code="policyName" /></td>
    <td><code>string</code></td>
    <td>Unique name for the policy</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="patch_mam_policy"
    values={[
        { label: 'patch_mam_policy', value: 'patch_mam_policy' },
        { label: 'add_app_for_mam_policy', value: 'add_app_for_mam_policy' },
        { label: 'add_group_for_mam_policy', value: 'add_group_for_mam_policy' }
    ]}
>
<TabItem value="patch_mam_policy">

Patch AndroidMAMPolicy.

```sql
EXEC azure_extras.intune.androids.patch_mam_policy 
@hostName='{{ hostName }}' --required, 
@policyName='{{ policyName }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"tags": "{{ tags }}", 
"location": "{{ location }}"
}'
;
```
</TabItem>
<TabItem value="add_app_for_mam_policy">

Add app to an AndroidMAMPolicy.

```sql
EXEC azure_extras.intune.androids.add_app_for_mam_policy 
@hostName='{{ hostName }}' --required, 
@policyName='{{ policyName }}' --required, 
@appName='{{ appName }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="add_group_for_mam_policy">

Add group to an AndroidMAMPolicy.

```sql
EXEC azure_extras.intune.androids.add_group_for_mam_policy 
@hostName='{{ hostName }}' --required, 
@policyName='{{ policyName }}' --required, 
@groupId='{{ groupId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
