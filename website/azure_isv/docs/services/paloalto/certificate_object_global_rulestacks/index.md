--- 
title: certificate_object_global_rulestacks
hide_title: false
hide_table_of_contents: false
keywords:
  - certificate_object_global_rulestacks
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

Creates, updates, deletes, gets or lists a <code>certificate_object_global_rulestacks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>certificate_object_global_rulestacks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.certificate_object_global_rulestacks" /></td></tr>
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
<TabItem value="list">

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
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Get a CertificateObjectGlobalRulestackResource</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a></td>
    <td></td>
    <td>List CertificateObjectGlobalRulestackResource resources by Tenant</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a CertificateObjectGlobalRulestackResource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Delete a CertificateObjectGlobalRulestackResource</td>
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
<tr id="parameter-globalRulestackName">
    <td><CopyableCode code="globalRulestackName" /></td>
    <td><code>string</code></td>
    <td>GlobalRulestack resource name</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>certificate name</td>
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

Get a CertificateObjectGlobalRulestackResource

```sql
SELECT
properties,
systemData
FROM azure_isv.paloalto.certificate_object_global_rulestacks
WHERE globalRulestackName = '{{ globalRulestackName }}' -- required
AND name = '{{ name }}' -- required
;
```
</TabItem>
<TabItem value="list">

List CertificateObjectGlobalRulestackResource resources by Tenant

```sql
SELECT
properties,
systemData
FROM azure_isv.paloalto.certificate_object_global_rulestacks
WHERE globalRulestackName = '{{ globalRulestackName }}' -- required
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

Create a CertificateObjectGlobalRulestackResource

```sql
INSERT INTO azure_isv.paloalto.certificate_object_global_rulestacks (
data__properties,
globalRulestackName,
name
)
SELECT 
'{{ properties }}' /* required */,
'{{ globalRulestackName }}',
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
- name: certificate_object_global_rulestacks
  props:
    - name: globalRulestackName
      value: string
      description: Required parameter for the certificate_object_global_rulestacks resource.
    - name: name
      value: string
      description: Required parameter for the certificate_object_global_rulestacks resource.
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

Delete a CertificateObjectGlobalRulestackResource

```sql
DELETE FROM azure_isv.paloalto.certificate_object_global_rulestacks
WHERE globalRulestackName = '{{ globalRulestackName }}' --required
AND name = '{{ name }}' --required
;
```
</TabItem>
</Tabs>
