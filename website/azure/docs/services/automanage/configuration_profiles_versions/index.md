--- 
title: configuration_profiles_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - configuration_profiles_versions
  - automanage
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

Creates, updates, deletes, gets or lists a <code>configuration_profiles_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>configuration_profiles_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automanage.configuration_profiles_versions" /></td></tr>
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

OK. The configuration profile was returned successfully.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the configuration profile.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-configurationProfileName"><code>configurationProfileName</code></a>, <a href="#parameter-versionName"><code>versionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Get information about a configuration profile version</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-configurationProfileName"><code>configurationProfileName</code></a>, <a href="#parameter-versionName"><code>versionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Creates a configuration profile version</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-configurationProfileName"><code>configurationProfileName</code></a>, <a href="#parameter-versionName"><code>versionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Delete a configuration profile version</td>
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
<tr id="parameter-configurationProfileName">
    <td><CopyableCode code="configurationProfileName" /></td>
    <td><code>string</code></td>
    <td>Name of the configuration profile</td>
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
<tr id="parameter-versionName">
    <td><CopyableCode code="versionName" /></td>
    <td><code>string</code></td>
    <td>The configuration profile version name.</td>
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

Get information about a configuration profile version

```sql
SELECT
location,
properties,
systemData,
tags
FROM azure.automanage.configuration_profiles_versions
WHERE configurationProfileName = '{{ configurationProfileName }}' -- required
AND versionName = '{{ versionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
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

Creates a configuration profile version

```sql
INSERT INTO azure.automanage.configuration_profiles_versions (
data__properties,
data__tags,
data__location,
configurationProfileName,
versionName,
subscriptionId,
resourceGroupName
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ configurationProfileName }}',
'{{ versionName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}'
RETURNING
location,
properties,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: configuration_profiles_versions
  props:
    - name: configurationProfileName
      value: string
      description: Required parameter for the configuration_profiles_versions resource.
    - name: versionName
      value: string
      description: Required parameter for the configuration_profiles_versions resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the configuration_profiles_versions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the configuration_profiles_versions resource.
    - name: properties
      value: object
      description: |
        Properties of the configuration profile.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Delete a configuration profile version

```sql
DELETE FROM azure.automanage.configuration_profiles_versions
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND configurationProfileName = '{{ configurationProfileName }}' --required
AND versionName = '{{ versionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
