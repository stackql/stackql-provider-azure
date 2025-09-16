--- 
title: attached_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - attached_networks
  - dev_center
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

Creates, updates, deletes, gets or lists an <code>attached_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>attached_networks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.attached_networks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_project"
    values={[
        { label: 'get_by_project', value: 'get_by_project' },
        { label: 'get_by_dev_center', value: 'get_by_dev_center' },
        { label: 'list_by_project', value: 'list_by_project' },
        { label: 'list_by_dev_center', value: 'list_by_dev_center' }
    ]}
>
<TabItem value="get_by_project">

OK. The request has succeeded.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Attached NetworkConnection properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_dev_center">

OK. The request has succeeded.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Attached NetworkConnection properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_project">

OK. The request has succeeded.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Attached NetworkConnection properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_dev_center">

OK. The request has succeeded.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Attached NetworkConnection properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#get_by_project"><CopyableCode code="get_by_project" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-attachedNetworkConnectionName"><code>attachedNetworkConnectionName</code></a></td>
    <td></td>
    <td>Gets an attached NetworkConnection.</td>
</tr>
<tr>
    <td><a href="#get_by_dev_center"><CopyableCode code="get_by_dev_center" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-attachedNetworkConnectionName"><code>attachedNetworkConnectionName</code></a></td>
    <td></td>
    <td>Gets an attached NetworkConnection.</td>
</tr>
<tr>
    <td><a href="#list_by_project"><CopyableCode code="list_by_project" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists the attached NetworkConnections for a Project.</td>
</tr>
<tr>
    <td><a href="#list_by_dev_center"><CopyableCode code="list_by_dev_center" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists the attached NetworkConnections for a DevCenter.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-attachedNetworkConnectionName"><code>attachedNetworkConnectionName</code></a></td>
    <td></td>
    <td>Creates or updates an attached NetworkConnection.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-attachedNetworkConnectionName"><code>attachedNetworkConnectionName</code></a></td>
    <td></td>
    <td>Un-attach a NetworkConnection.</td>
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
<tr id="parameter-attachedNetworkConnectionName">
    <td><CopyableCode code="attachedNetworkConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the attached NetworkConnection.</td>
</tr>
<tr id="parameter-devCenterName">
    <td><CopyableCode code="devCenterName" /></td>
    <td><code>string</code></td>
    <td>The name of the devcenter.</td>
</tr>
<tr id="parameter-projectName">
    <td><CopyableCode code="projectName" /></td>
    <td><code>string</code></td>
    <td>The name of the project.</td>
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
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of resources to return from the operation. Example: '$top=10'.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_project"
    values={[
        { label: 'get_by_project', value: 'get_by_project' },
        { label: 'get_by_dev_center', value: 'get_by_dev_center' },
        { label: 'list_by_project', value: 'list_by_project' },
        { label: 'list_by_dev_center', value: 'list_by_dev_center' }
    ]}
>
<TabItem value="get_by_project">

Gets an attached NetworkConnection.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.dev_center.attached_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND attachedNetworkConnectionName = '{{ attachedNetworkConnectionName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_dev_center">

Gets an attached NetworkConnection.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.dev_center.attached_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND devCenterName = '{{ devCenterName }}' -- required
AND attachedNetworkConnectionName = '{{ attachedNetworkConnectionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_project">

Lists the attached NetworkConnections for a Project.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.dev_center.attached_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="list_by_dev_center">

Lists the attached NetworkConnections for a DevCenter.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.dev_center.attached_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND devCenterName = '{{ devCenterName }}' -- required
AND $top = '{{ $top }}'
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

Creates or updates an attached NetworkConnection.

```sql
INSERT INTO azure.dev_center.attached_networks (
data__properties,
subscriptionId,
resourceGroupName,
devCenterName,
attachedNetworkConnectionName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ devCenterName }}',
'{{ attachedNetworkConnectionName }}'
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
- name: attached_networks
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the attached_networks resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the attached_networks resource.
    - name: devCenterName
      value: string
      description: Required parameter for the attached_networks resource.
    - name: attachedNetworkConnectionName
      value: string
      description: Required parameter for the attached_networks resource.
    - name: properties
      value: object
      description: |
        Attached NetworkConnection properties.
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

Un-attach a NetworkConnection.

```sql
DELETE FROM azure.dev_center.attached_networks
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND devCenterName = '{{ devCenterName }}' --required
AND attachedNetworkConnectionName = '{{ attachedNetworkConnectionName }}' --required
;
```
</TabItem>
</Tabs>
