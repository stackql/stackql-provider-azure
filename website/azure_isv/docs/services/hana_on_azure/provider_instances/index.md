--- 
title: provider_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - provider_instances
  - hana_on_azure
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.hana_on_azure.provider_instances" /></td></tr>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapMonitorName"><code>sapMonitorName</code></a>, <a href="#parameter-providerInstanceName"><code>providerInstanceName</code></a></td>
    <td></td>
    <td>The product Microsoft.Workloads/sapMonitors (AMS Classic) is officially retired as of May 31, 2023.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapMonitorName"><code>sapMonitorName</code></a></td>
    <td></td>
    <td>The product Microsoft.Workloads/sapMonitors (AMS Classic) is officially retired as of May 31, 2023.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapMonitorName"><code>sapMonitorName</code></a>, <a href="#parameter-providerInstanceName"><code>providerInstanceName</code></a></td>
    <td></td>
    <td>The product Microsoft.Workloads/sapMonitors (AMS Classic) is officially retired as of May 31, 2023.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapMonitorName"><code>sapMonitorName</code></a>, <a href="#parameter-providerInstanceName"><code>providerInstanceName</code></a></td>
    <td></td>
    <td>The product Microsoft.Workloads/sapMonitors (AMS Classic) is officially retired as of May 31, 2023.</td>
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
<tr id="parameter-providerInstanceName">
    <td><CopyableCode code="providerInstanceName" /></td>
    <td><code>string</code></td>
    <td>Name of the provider instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group.</td>
</tr>
<tr id="parameter-sapMonitorName">
    <td><CopyableCode code="sapMonitorName" /></td>
    <td><code>string</code></td>
    <td>Name of the SAP monitor resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

The product Microsoft.Workloads/sapMonitors (AMS Classic) is officially retired as of May 31, 2023.

```sql
SELECT
properties
FROM azure_isv.hana_on_azure.provider_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND sapMonitorName = '{{ sapMonitorName }}' -- required
AND providerInstanceName = '{{ providerInstanceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

The product Microsoft.Workloads/sapMonitors (AMS Classic) is officially retired as of May 31, 2023.

```sql
SELECT
properties
FROM azure_isv.hana_on_azure.provider_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND sapMonitorName = '{{ sapMonitorName }}' -- required
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

The product Microsoft.Workloads/sapMonitors (AMS Classic) is officially retired as of May 31, 2023.

```sql
INSERT INTO azure_isv.hana_on_azure.provider_instances (
data__properties,
subscriptionId,
resourceGroupName,
sapMonitorName,
providerInstanceName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ sapMonitorName }}',
'{{ providerInstanceName }}'
RETURNING
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
    - name: sapMonitorName
      value: string
      description: Required parameter for the provider_instances resource.
    - name: providerInstanceName
      value: string
      description: Required parameter for the provider_instances resource.
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

The product Microsoft.Workloads/sapMonitors (AMS Classic) is officially retired as of May 31, 2023.

```sql
DELETE FROM azure_isv.hana_on_azure.provider_instances
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND sapMonitorName = '{{ sapMonitorName }}' --required
AND providerInstanceName = '{{ providerInstanceName }}' --required
;
```
</TabItem>
</Tabs>
