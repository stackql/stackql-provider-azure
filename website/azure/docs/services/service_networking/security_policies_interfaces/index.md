--- 
title: security_policies_interfaces
hide_title: false
hide_table_of_contents: false
keywords:
  - security_policies_interfaces
  - service_networking
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

Creates, updates, deletes, gets or lists a <code>security_policies_interfaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>security_policies_interfaces</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_networking.security_policies_interfaces" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_traffic_controller', value: 'list_by_traffic_controller' }
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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_traffic_controller">

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-trafficControllerName"><code>trafficControllerName</code></a>, <a href="#parameter-securityPolicyName"><code>securityPolicyName</code></a></td>
    <td></td>
    <td>Get a SecurityPolicy</td>
</tr>
<tr>
    <td><a href="#list_by_traffic_controller"><CopyableCode code="list_by_traffic_controller" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-trafficControllerName"><code>trafficControllerName</code></a></td>
    <td></td>
    <td>List SecurityPolicy resources by TrafficController</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-trafficControllerName"><code>trafficControllerName</code></a>, <a href="#parameter-securityPolicyName"><code>securityPolicyName</code></a></td>
    <td></td>
    <td>Create a SecurityPolicy</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-trafficControllerName"><code>trafficControllerName</code></a>, <a href="#parameter-securityPolicyName"><code>securityPolicyName</code></a></td>
    <td></td>
    <td>Update a SecurityPolicy</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-trafficControllerName"><code>trafficControllerName</code></a>, <a href="#parameter-securityPolicyName"><code>securityPolicyName</code></a></td>
    <td></td>
    <td>Delete a SecurityPolicy</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-securityPolicyName">
    <td><CopyableCode code="securityPolicyName" /></td>
    <td><code>string</code></td>
    <td>SecurityPolicy</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-trafficControllerName">
    <td><CopyableCode code="trafficControllerName" /></td>
    <td><code>string</code></td>
    <td>traffic controller name for path</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_traffic_controller', value: 'list_by_traffic_controller' }
    ]}
>
<TabItem value="get">

Get a SecurityPolicy

```sql
SELECT
location,
properties,
tags
FROM azure.service_networking.security_policies_interfaces
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND trafficControllerName = '{{ trafficControllerName }}' -- required
AND securityPolicyName = '{{ securityPolicyName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_traffic_controller">

List SecurityPolicy resources by TrafficController

```sql
SELECT
location,
properties,
tags
FROM azure.service_networking.security_policies_interfaces
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND trafficControllerName = '{{ trafficControllerName }}' -- required
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

Create a SecurityPolicy

```sql
INSERT INTO azure.service_networking.security_policies_interfaces (
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
trafficControllerName,
securityPolicyName
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ trafficControllerName }}',
'{{ securityPolicyName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: security_policies_interfaces
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the security_policies_interfaces resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the security_policies_interfaces resource.
    - name: trafficControllerName
      value: string
      description: Required parameter for the security_policies_interfaces resource.
    - name: securityPolicyName
      value: string
      description: Required parameter for the security_policies_interfaces resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update a SecurityPolicy

```sql
UPDATE azure.service_networking.security_policies_interfaces
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND trafficControllerName = '{{ trafficControllerName }}' --required
AND securityPolicyName = '{{ securityPolicyName }}' --required
RETURNING
location,
properties,
tags;
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

Delete a SecurityPolicy

```sql
DELETE FROM azure.service_networking.security_policies_interfaces
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND trafficControllerName = '{{ trafficControllerName }}' --required
AND securityPolicyName = '{{ securityPolicyName }}' --required
;
```
</TabItem>
</Tabs>
