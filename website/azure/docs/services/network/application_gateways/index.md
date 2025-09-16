--- 
title: application_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - application_gateways
  - network
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

Creates, updates, deletes, gets or lists an <code>application_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>application_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.application_gateways" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
    ]}
>
<TabItem value="get">

Request successful. The operation returns an ApplicationGateway resource.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the application gateway, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the application gateway.</td>
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
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>A list of availability zones denoting where the resource needs to come from.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Success. The operation returns a list of ApplicationGateway resources.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the application gateway, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the application gateway.</td>
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
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>A list of availability zones denoting where the resource needs to come from.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_all">

Success. The operation returns a list of ApplicationGateway resources.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the application gateway, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the application gateway.</td>
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
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>A list of availability zones denoting where the resource needs to come from.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationGatewayName"><code>applicationGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the specified application gateway.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all application gateways in a resource group.</td>
</tr>
<tr>
    <td><a href="#list_all"><CopyableCode code="list_all" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all the application gateways in a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationGatewayName"><code>applicationGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates the specified application gateway.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationGatewayName"><code>applicationGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified application gateway.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationGatewayName"><code>applicationGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates the specified application gateway tags.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationGatewayName"><code>applicationGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts the specified application gateway.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationGatewayName"><code>applicationGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Stops the specified application gateway in a resource group.</td>
</tr>
<tr>
    <td><a href="#backend_health"><CopyableCode code="backend_health" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationGatewayName"><code>applicationGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets the backend health of the specified application gateway in a resource group.</td>
</tr>
<tr>
    <td><a href="#backend_health_on_demand"><CopyableCode code="backend_health_on_demand" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationGatewayName"><code>applicationGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets the backend health for given combination of backend pool and http setting of the specified application gateway in a resource group.</td>
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
<tr id="parameter-applicationGatewayName">
    <td><CopyableCode code="applicationGatewayName" /></td>
    <td><code>string</code></td>
    <td>The name of the application gateway.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Expands BackendAddressPool and BackendHttpSettings referenced in backend health.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
    ]}
>
<TabItem value="get">

Gets the specified application gateway.

```sql
SELECT
id,
name,
etag,
identity,
properties,
systemData,
type,
zones
FROM azure.network.application_gateways
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND applicationGatewayName = '{{ applicationGatewayName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all application gateways in a resource group.

```sql
SELECT
id,
name,
etag,
identity,
properties,
systemData,
type,
zones
FROM azure.network.application_gateways
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_all">

Gets all the application gateways in a subscription.

```sql
SELECT
id,
name,
etag,
identity,
properties,
systemData,
type,
zones
FROM azure.network.application_gateways
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates the specified application gateway.

```sql
INSERT INTO azure.network.application_gateways (
data__properties,
data__zones,
data__identity,
resourceGroupName,
applicationGatewayName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ zones }}',
'{{ identity }}',
'{{ resourceGroupName }}',
'{{ applicationGatewayName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
identity,
properties,
systemData,
type,
zones
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: application_gateways
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the application_gateways resource.
    - name: applicationGatewayName
      value: string
      description: Required parameter for the application_gateways resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the application_gateways resource.
    - name: properties
      value: object
      description: |
        Properties of the application gateway.
    - name: zones
      value: array
      description: |
        A list of availability zones denoting where the resource needs to come from.
    - name: identity
      value: object
      description: |
        The identity of the application gateway, if configured.
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

Deletes the specified application gateway.

```sql
DELETE FROM azure.network.application_gateways
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND applicationGatewayName = '{{ applicationGatewayName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_tags"
    values={[
        { label: 'update_tags', value: 'update_tags' },
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'backend_health', value: 'backend_health' },
        { label: 'backend_health_on_demand', value: 'backend_health_on_demand' }
    ]}
>
<TabItem value="update_tags">

Updates the specified application gateway tags.

```sql
EXEC azure.network.application_gateways.update_tags 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@applicationGatewayName='{{ applicationGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="start">

Starts the specified application gateway.

```sql
EXEC azure.network.application_gateways.start 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@applicationGatewayName='{{ applicationGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="stop">

Stops the specified application gateway in a resource group.

```sql
EXEC azure.network.application_gateways.stop 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@applicationGatewayName='{{ applicationGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="backend_health">

Gets the backend health of the specified application gateway in a resource group.

```sql
EXEC azure.network.application_gateways.backend_health 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@applicationGatewayName='{{ applicationGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@$expand='{{ $expand }}'
;
```
</TabItem>
<TabItem value="backend_health_on_demand">

Gets the backend health for given combination of backend pool and http setting of the specified application gateway in a resource group.

```sql
EXEC azure.network.application_gateways.backend_health_on_demand 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@applicationGatewayName='{{ applicationGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@$expand='{{ $expand }}' 
@@json=
'{
"protocol": "{{ protocol }}", 
"host": "{{ host }}", 
"path": "{{ path }}", 
"timeout": {{ timeout }}, 
"pickHostNameFromBackendHttpSettings": {{ pickHostNameFromBackendHttpSettings }}, 
"match": "{{ match }}", 
"backendAddressPool": "{{ backendAddressPool }}", 
"backendHttpSettings": "{{ backendHttpSettings }}"
}'
;
```
</TabItem>
</Tabs>
