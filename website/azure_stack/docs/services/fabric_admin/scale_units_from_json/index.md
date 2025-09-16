--- 
title: scale_units_from_json
hide_title: false
hide_table_of_contents: false
keywords:
  - scale_units_from_json
  - fabric_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>scale_units_from_json</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scale_units_from_json</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.scale_units_from_json" /></td></tr>
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
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-scaleUnit"><code>scaleUnit</code></a></td>
    <td></td>
    <td>Add a new scale unit.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of Azure region.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group.</td>
</tr>
<tr id="parameter-scaleUnit">
    <td><CopyableCode code="scaleUnit" /></td>
    <td><code>string</code></td>
    <td>Name of the scale units.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Add a new scale unit.

```sql
INSERT INTO azure_stack.fabric_admin.scale_units_from_json (
data__clusterName,
data__physicalNodes,
data__torSwitchBgpAsn,
data__softwareBgpAsn,
data__torSwitchBgpPeerIp,
data__infrastructureNetwork,
data__storageNetwork,
data__netQosPriority,
subscriptionId,
resourceGroupName,
location,
scaleUnit
)
SELECT 
'{{ clusterName }}',
'{{ physicalNodes }}',
'{{ torSwitchBgpAsn }}',
'{{ softwareBgpAsn }}',
'{{ torSwitchBgpPeerIp }}',
'{{ infrastructureNetwork }}',
'{{ storageNetwork }}',
{{ netQosPriority }},
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ location }}',
'{{ scaleUnit }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: scale_units_from_json
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the scale_units_from_json resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the scale_units_from_json resource.
    - name: location
      value: string
      description: Required parameter for the scale_units_from_json resource.
    - name: scaleUnit
      value: string
      description: Required parameter for the scale_units_from_json resource.
    - name: clusterName
      value: string
      description: |
        Cluster name for the new scale unit.
    - name: physicalNodes
      value: array
      description: |
        List of nodes in the scale unit.
    - name: torSwitchBgpAsn
      value: string
      description: |
        The ASN for the cluster's rack TOR.
    - name: softwareBgpAsn
      value: string
      description: |
        The software ASN for the cluster's rack.
    - name: torSwitchBgpPeerIp
      value: array
      description: |
        The list of IP addresses used for TOR communication.
    - name: infrastructureNetwork
      value: object
      description: |
        The information associated with the infrastructure network that will be subdivided into subnets.
    - name: storageNetwork
      value: object
      description: |
        The information associated with the storage network that will be subdivided into subnets.
    - name: netQosPriority
      value: integer
      description: |
        The network QOS priority setting.
```
</TabItem>
</Tabs>
