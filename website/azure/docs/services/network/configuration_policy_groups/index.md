--- 
title: configuration_policy_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - configuration_policy_groups
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

Creates, updates, deletes, gets or lists a <code>configuration_policy_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>configuration_policy_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.configuration_policy_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_vpn_server_configuration', value: 'list_by_vpn_server_configuration' }
    ]}
>
<TabItem value="get">

Request successful. Returns the details of the ConfigurationPolicyGroup retrieved.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the VpnServerConfigurationPolicyGroup.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_vpn_server_configuration">

Request successful. Returns the details of all the VpnServerConfigurations in the resource group.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the VpnServerConfigurationPolicyGroup.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vpnServerConfigurationName"><code>vpnServerConfigurationName</code></a>, <a href="#parameter-configurationPolicyGroupName"><code>configurationPolicyGroupName</code></a></td>
    <td></td>
    <td>Retrieves the details of a ConfigurationPolicyGroup.</td>
</tr>
<tr>
    <td><a href="#list_by_vpn_server_configuration"><CopyableCode code="list_by_vpn_server_configuration" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vpnServerConfigurationName"><code>vpnServerConfigurationName</code></a></td>
    <td></td>
    <td>Lists all the configurationPolicyGroups in a resource group for a vpnServerConfiguration.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vpnServerConfigurationName"><code>vpnServerConfigurationName</code></a>, <a href="#parameter-configurationPolicyGroupName"><code>configurationPolicyGroupName</code></a></td>
    <td></td>
    <td>Creates a ConfigurationPolicyGroup if it doesn't exist else updates the existing one.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vpnServerConfigurationName"><code>vpnServerConfigurationName</code></a>, <a href="#parameter-configurationPolicyGroupName"><code>configurationPolicyGroupName</code></a></td>
    <td></td>
    <td>Deletes a ConfigurationPolicyGroup.</td>
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
<tr id="parameter-configurationPolicyGroupName">
    <td><CopyableCode code="configurationPolicyGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the ConfigurationPolicyGroup.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name of the ConfigurationPolicyGroup.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-vpnServerConfigurationName">
    <td><CopyableCode code="vpnServerConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The name of the VpnServerConfiguration.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_vpn_server_configuration', value: 'list_by_vpn_server_configuration' }
    ]}
>
<TabItem value="get">

Retrieves the details of a ConfigurationPolicyGroup.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.configuration_policy_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vpnServerConfigurationName = '{{ vpnServerConfigurationName }}' -- required
AND configurationPolicyGroupName = '{{ configurationPolicyGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_vpn_server_configuration">

Lists all the configurationPolicyGroups in a resource group for a vpnServerConfiguration.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.configuration_policy_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vpnServerConfigurationName = '{{ vpnServerConfigurationName }}' -- required
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

Creates a ConfigurationPolicyGroup if it doesn't exist else updates the existing one.

```sql
INSERT INTO azure.network.configuration_policy_groups (
data__properties,
data__name,
data__id,
subscriptionId,
resourceGroupName,
vpnServerConfigurationName,
configurationPolicyGroupName
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ id }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ vpnServerConfigurationName }}',
'{{ configurationPolicyGroupName }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: configuration_policy_groups
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the configuration_policy_groups resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the configuration_policy_groups resource.
    - name: vpnServerConfigurationName
      value: string
      description: Required parameter for the configuration_policy_groups resource.
    - name: configurationPolicyGroupName
      value: string
      description: Required parameter for the configuration_policy_groups resource.
    - name: properties
      value: object
      description: |
        Properties of the VpnServerConfigurationPolicyGroup.
    - name: name
      value: string
      description: |
        The name of the resource that is unique within a resource group. This name can be used to access the resource.
    - name: id
      value: string
      description: |
        Resource ID.
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

Deletes a ConfigurationPolicyGroup.

```sql
DELETE FROM azure.network.configuration_policy_groups
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND vpnServerConfigurationName = '{{ vpnServerConfigurationName }}' --required
AND configurationPolicyGroupName = '{{ configurationPolicyGroupName }}' --required
;
```
</TabItem>
</Tabs>
