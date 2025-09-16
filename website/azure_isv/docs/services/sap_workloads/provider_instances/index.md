--- 
title: provider_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - provider_instances
  - sap_workloads
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

Creates, updates, deletes, gets or lists a <code>provider_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>provider_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.sap_workloads.provider_instances" /></td></tr>
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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>A pre-created user assigned identity with appropriate roles assigned. To learn more on identity and roles required, visit the ACSS how-to-guide.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Provider Instance properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>A pre-created user assigned identity with appropriate roles assigned. To learn more on identity and roles required, visit the ACSS how-to-guide.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Provider Instance properties</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-providerInstanceName"><code>providerInstanceName</code></a></td>
    <td></td>
    <td>Gets properties of a provider instance for the specified subscription, resource group, SAP monitor name, and resource name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a></td>
    <td></td>
    <td>Gets a list of provider instances in the specified SAP monitor. The operations returns various properties of each provider instances.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-providerInstanceName"><code>providerInstanceName</code></a></td>
    <td></td>
    <td>Creates a provider instance for the specified subscription, resource group, SAP monitor name, and resource name.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-providerInstanceName"><code>providerInstanceName</code></a></td>
    <td></td>
    <td>Deletes a provider instance for the specified subscription, resource group, SAP monitor name, and resource name.</td>
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
<tr id="parameter-monitorName">
    <td><CopyableCode code="monitorName" /></td>
    <td><code>string</code></td>
    <td>Name of the SAP monitor resource.</td>
</tr>
<tr id="parameter-providerInstanceName">
    <td><CopyableCode code="providerInstanceName" /></td>
    <td><code>string</code></td>
    <td>Name of the provider instance.</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets properties of a provider instance for the specified subscription, resource group, SAP monitor name, and resource name.

```sql
SELECT
identity,
properties
FROM azure_isv.sap_workloads.provider_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND monitorName = '{{ monitorName }}' -- required
AND providerInstanceName = '{{ providerInstanceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of provider instances in the specified SAP monitor. The operations returns various properties of each provider instances.

```sql
SELECT
identity,
properties
FROM azure_isv.sap_workloads.provider_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND monitorName = '{{ monitorName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates a provider instance for the specified subscription, resource group, SAP monitor name, and resource name.

```sql
INSERT INTO azure_isv.sap_workloads.provider_instances (
data__identity,
data__properties,
subscriptionId,
resourceGroupName,
monitorName,
providerInstanceName
)
SELECT 
'{{ identity }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ monitorName }}',
'{{ providerInstanceName }}'
RETURNING
identity,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: provider_instances
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the provider_instances resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the provider_instances resource.
    - name: monitorName
      value: string
      description: Required parameter for the provider_instances resource.
    - name: providerInstanceName
      value: string
      description: Required parameter for the provider_instances resource.
    - name: identity
      value: object
      description: |
        A pre-created user assigned identity with appropriate roles assigned. To learn more on identity and roles required, visit the ACSS how-to-guide.
    - name: properties
      value: object
      description: |
        Provider Instance properties
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

Deletes a provider instance for the specified subscription, resource group, SAP monitor name, and resource name.

```sql
DELETE FROM azure_isv.sap_workloads.provider_instances
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND monitorName = '{{ monitorName }}' --required
AND providerInstanceName = '{{ providerInstanceName }}' --required
;
```
</TabItem>
</Tabs>
