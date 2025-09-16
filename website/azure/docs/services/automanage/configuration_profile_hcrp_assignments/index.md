--- 
title: configuration_profile_hcrp_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - configuration_profile_hcrp_assignments
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

Creates, updates, deletes, gets or lists a <code>configuration_profile_hcrp_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>configuration_profile_hcrp_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automanage.configuration_profile_hcrp_assignments" /></td></tr>
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

OK. The configuration profile assignment was returned successfully.

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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Azure resource id. Indicates if this resource is managed by another Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the configuration profile assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-machineName"><code>machineName</code></a>, <a href="#parameter-configurationProfileAssignmentName"><code>configurationProfileAssignmentName</code></a></td>
    <td></td>
    <td>Get information about a configuration profile assignment</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-machineName"><code>machineName</code></a>, <a href="#parameter-configurationProfileAssignmentName"><code>configurationProfileAssignmentName</code></a></td>
    <td></td>
    <td>Creates an association between a ARC machine and Automanage configuration profile</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-machineName"><code>machineName</code></a>, <a href="#parameter-configurationProfileAssignmentName"><code>configurationProfileAssignmentName</code></a></td>
    <td></td>
    <td>Delete a configuration profile assignment</td>
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
<tr id="parameter-configurationProfileAssignmentName">
    <td><CopyableCode code="configurationProfileAssignmentName" /></td>
    <td><code>string</code></td>
    <td>Name of the configuration profile assignment</td>
</tr>
<tr id="parameter-machineName">
    <td><CopyableCode code="machineName" /></td>
    <td><code>string</code></td>
    <td>The name of the Arc machine.</td>
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
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Get information about a configuration profile assignment

```sql
SELECT
managedBy,
properties,
systemData
FROM azure.automanage.configuration_profile_hcrp_assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND machineName = '{{ machineName }}' -- required
AND configurationProfileAssignmentName = '{{ configurationProfileAssignmentName }}' -- required
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

Creates an association between a ARC machine and Automanage configuration profile

```sql
INSERT INTO azure.automanage.configuration_profile_hcrp_assignments (
data__properties,
subscriptionId,
resourceGroupName,
machineName,
configurationProfileAssignmentName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ machineName }}',
'{{ configurationProfileAssignmentName }}'
RETURNING
managedBy,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: configuration_profile_hcrp_assignments
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the configuration_profile_hcrp_assignments resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the configuration_profile_hcrp_assignments resource.
    - name: machineName
      value: string
      description: Required parameter for the configuration_profile_hcrp_assignments resource.
    - name: configurationProfileAssignmentName
      value: string
      description: Required parameter for the configuration_profile_hcrp_assignments resource.
    - name: properties
      value: object
      description: |
        Properties of the configuration profile assignment.
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

Delete a configuration profile assignment

```sql
DELETE FROM azure.automanage.configuration_profile_hcrp_assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND machineName = '{{ machineName }}' --required
AND configurationProfileAssignmentName = '{{ configurationProfileAssignmentName }}' --required
;
```
</TabItem>
</Tabs>
