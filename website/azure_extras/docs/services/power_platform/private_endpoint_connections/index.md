--- 
title: private_endpoint_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - private_endpoint_connections
  - power_platform
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

Creates, updates, deletes, gets or lists a <code>private_endpoint_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_endpoint_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.power_platform.private_endpoint_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_enterprise_policy', value: 'list_by_enterprise_policy' }
    ]}
>
<TabItem value="get">

Successfully retrieved a specified private endpoint connection.

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
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_enterprise_policy">

Successfully retrieved private endpoint connections.

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
    <td>Resource properties.</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-enterprisePolicyName"><code>enterprisePolicyName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Gets a private endpoint connection.</td>
</tr>
<tr>
    <td><a href="#list_by_enterprise_policy"><CopyableCode code="list_by_enterprise_policy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-enterprisePolicyName"><code>enterprisePolicyName</code></a></td>
    <td></td>
    <td>List all private endpoint connections on an EnterprisePolicy.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-enterprisePolicyName"><code>enterprisePolicyName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Approve or reject a private endpoint connection with a given name.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-enterprisePolicyName"><code>enterprisePolicyName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Deletes a private endpoint connection with a given name.</td>
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
<tr id="parameter-enterprisePolicyName">
    <td><CopyableCode code="enterprisePolicyName" /></td>
    <td><code>string</code></td>
    <td>EnterprisePolicy for the Microsoft Azure subscription.</td>
</tr>
<tr id="parameter-privateEndpointConnectionName">
    <td><CopyableCode code="privateEndpointConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the private endpoint connection.</td>
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
        { label: 'list_by_enterprise_policy', value: 'list_by_enterprise_policy' }
    ]}
>
<TabItem value="get">

Gets a private endpoint connection.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.power_platform.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND enterprisePolicyName = '{{ enterprisePolicyName }}' -- required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_enterprise_policy">

List all private endpoint connections on an EnterprisePolicy.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.power_platform.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND enterprisePolicyName = '{{ enterprisePolicyName }}' -- required
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

Approve or reject a private endpoint connection with a given name.

```sql
INSERT INTO azure_extras.power_platform.private_endpoint_connections (
data__properties,
subscriptionId,
resourceGroupName,
enterprisePolicyName,
privateEndpointConnectionName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ enterprisePolicyName }}',
'{{ privateEndpointConnectionName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: private_endpoint_connections
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: enterprisePolicyName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: privateEndpointConnectionName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: properties
      value: object
      description: |
        Resource properties.
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

Deletes a private endpoint connection with a given name.

```sql
DELETE FROM azure_extras.power_platform.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND enterprisePolicyName = '{{ enterprisePolicyName }}' --required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' --required
;
```
</TabItem>
</Tabs>
