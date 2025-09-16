--- 
title: ios_mam_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - ios_mam_policies
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

Creates, updates, deletes, gets or lists an <code>ios_mam_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ios_mam_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.intune.ios_mam_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

applications as collection response

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Intune MAM iOS Policy Properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource Tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
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
    <td><a href="#parameter-hostName"><code>hostName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$select"><code>$select</code></a></td>
    <td>Returns Intune iOSPolicies.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-hostName"><code>hostName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a></td>
    <td></td>
    <td>Creates or updates iOSMAMPolicy.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-hostName"><code>hostName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a></td>
    <td></td>
    <td>Delete Ios Policy</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation.</td>
</tr>
<tr id="parameter-$select">
    <td><CopyableCode code="$select" /></td>
    <td><code>string</code></td>
    <td>select specific fields in entity.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td></td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Returns Intune iOSPolicies.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure_extras.intune.ios_mam_policies
WHERE hostName = '{{ hostName }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $select = '{{ $select }}'
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

Creates or updates iOSMAMPolicy.

```sql
INSERT INTO azure_extras.intune.ios_mam_policies (
data__properties,
data__tags,
data__location,
hostName,
policyName
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ hostName }}',
'{{ policyName }}'
RETURNING
id,
name,
location,
properties,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: ios_mam_policies
  props:
    - name: hostName
      value: string
      description: Required parameter for the ios_mam_policies resource.
    - name: policyName
      value: string
      description: Required parameter for the ios_mam_policies resource.
    - name: properties
      value: object
      description: |
        Intune MAM iOS Policy Properties.
    - name: tags
      value: object
      description: |
        Resource Tags
    - name: location
      value: string
      description: |
        Resource Location
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

Delete Ios Policy

```sql
DELETE FROM azure_extras.intune.ios_mam_policies
WHERE hostName = '{{ hostName }}' --required
AND policyName = '{{ policyName }}' --required
;
```
</TabItem>
</Tabs>
