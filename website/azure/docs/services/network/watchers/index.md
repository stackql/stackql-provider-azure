--- 
title: watchers
hide_title: false
hide_table_of_contents: false
keywords:
  - watchers
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

Creates, updates, deletes, gets or lists a <code>watchers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>watchers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.watchers" /></td></tr>
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

Request successful. The operation returns a network watcher resource.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the network watcher.</td>
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
<TabItem value="list">

Request successful. The operation returns a list of network watcher resources.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the network watcher.</td>
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
<TabItem value="list_all">

Request successful. The operation returns a list of network watcher resources.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the network watcher.</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the specified network watcher by resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all network watchers by resource group.</td>
</tr>
<tr>
    <td><a href="#list_all"><CopyableCode code="list_all" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all network watchers by subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a network watcher in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified network watcher resource.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a network watcher tags.</td>
</tr>
<tr>
    <td><a href="#verify_ip_flow"><CopyableCode code="verify_ip_flow" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetResourceId"><code>targetResourceId</code></a>, <a href="#parameter-direction"><code>direction</code></a>, <a href="#parameter-protocol"><code>protocol</code></a>, <a href="#parameter-localPort"><code>localPort</code></a>, <a href="#parameter-remotePort"><code>remotePort</code></a>, <a href="#parameter-localIPAddress"><code>localIPAddress</code></a>, <a href="#parameter-remoteIPAddress"><code>remoteIPAddress</code></a></td>
    <td></td>
    <td>Verify IP flow from the specified VM to a location given the currently configured NSG rules.</td>
</tr>
<tr>
    <td><a href="#set_flow_log_configuration"><CopyableCode code="set_flow_log_configuration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetResourceId"><code>targetResourceId</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Configures flow log and traffic analytics (optional) on a specified resource.</td>
</tr>
<tr>
    <td><a href="#check_connectivity"><CopyableCode code="check_connectivity" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-source"><code>source</code></a>, <a href="#parameter-destination"><code>destination</code></a></td>
    <td></td>
    <td>Verifies the possibility of establishing a direct TCP connection from a virtual machine to a given endpoint including another VM or an arbitrary remote server.</td>
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
<tr id="parameter-networkWatcherName">
    <td><CopyableCode code="networkWatcherName" /></td>
    <td><code>string</code></td>
    <td>The name of the network watcher resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the network watcher resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
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

Gets the specified network watcher by resource group.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.network.watchers
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkWatcherName = '{{ networkWatcherName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all network watchers by resource group.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.network.watchers
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_all">

Gets all network watchers by subscription.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.network.watchers
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

Creates or updates a network watcher in the specified resource group.

```sql
INSERT INTO azure.network.watchers (
data__properties,
resourceGroupName,
networkWatcherName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ networkWatcherName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: watchers
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the watchers resource.
    - name: networkWatcherName
      value: string
      description: Required parameter for the watchers resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the watchers resource.
    - name: properties
      value: object
      description: |
        Properties of the network watcher.
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

Deletes the specified network watcher resource.

```sql
DELETE FROM azure.network.watchers
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND networkWatcherName = '{{ networkWatcherName }}' --required
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
        { label: 'verify_ip_flow', value: 'verify_ip_flow' },
        { label: 'set_flow_log_configuration', value: 'set_flow_log_configuration' },
        { label: 'check_connectivity', value: 'check_connectivity' }
    ]}
>
<TabItem value="update_tags">

Updates a network watcher tags.

```sql
EXEC azure.network.watchers.update_tags 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkWatcherName='{{ networkWatcherName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="verify_ip_flow">

Verify IP flow from the specified VM to a location given the currently configured NSG rules.

```sql
EXEC azure.network.watchers.verify_ip_flow 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkWatcherName='{{ networkWatcherName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetResourceId": "{{ targetResourceId }}", 
"direction": "{{ direction }}", 
"protocol": "{{ protocol }}", 
"localPort": "{{ localPort }}", 
"remotePort": "{{ remotePort }}", 
"localIPAddress": "{{ localIPAddress }}", 
"remoteIPAddress": "{{ remoteIPAddress }}", 
"targetNicResourceId": "{{ targetNicResourceId }}"
}'
;
```
</TabItem>
<TabItem value="set_flow_log_configuration">

Configures flow log and traffic analytics (optional) on a specified resource.

```sql
EXEC azure.network.watchers.set_flow_log_configuration 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkWatcherName='{{ networkWatcherName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetResourceId": "{{ targetResourceId }}", 
"properties": "{{ properties }}", 
"flowAnalyticsConfiguration": "{{ flowAnalyticsConfiguration }}", 
"identity": "{{ identity }}"
}'
;
```
</TabItem>
<TabItem value="check_connectivity">

Verifies the possibility of establishing a direct TCP connection from a virtual machine to a given endpoint including another VM or an arbitrary remote server.

```sql
EXEC azure.network.watchers.check_connectivity 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkWatcherName='{{ networkWatcherName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"source": "{{ source }}", 
"destination": "{{ destination }}", 
"protocol": "{{ protocol }}", 
"protocolConfiguration": "{{ protocolConfiguration }}", 
"preferredIPVersion": "{{ preferredIPVersion }}"
}'
;
```
</TabItem>
</Tabs>
