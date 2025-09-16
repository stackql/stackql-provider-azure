--- 
title: predefined_accelerators
hide_title: false
hide_table_of_contents: false
keywords:
  - predefined_accelerators
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>predefined_accelerators</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>predefined_accelerators</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.predefined_accelerators" /></td></tr>
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

Success. The response describes the corresponding predefined accelerator.

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
    <td>Predefined accelerator properties payload</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Sku of the predefined accelerator resource</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Success. The response describes the list of predefined accelerators.

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
    <td>Predefined accelerator properties payload</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Sku of the predefined accelerator resource</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-applicationAcceleratorName"><code>applicationAcceleratorName</code></a>, <a href="#parameter-predefinedAcceleratorName"><code>predefinedAcceleratorName</code></a></td>
    <td></td>
    <td>Get the predefined accelerator.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-applicationAcceleratorName"><code>applicationAcceleratorName</code></a></td>
    <td></td>
    <td>Handle requests to list all predefined accelerators.</td>
</tr>
<tr>
    <td><a href="#disable"><CopyableCode code="disable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-applicationAcceleratorName"><code>applicationAcceleratorName</code></a>, <a href="#parameter-predefinedAcceleratorName"><code>predefinedAcceleratorName</code></a></td>
    <td></td>
    <td>Disable predefined accelerator.</td>
</tr>
<tr>
    <td><a href="#enable"><CopyableCode code="enable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-applicationAcceleratorName"><code>applicationAcceleratorName</code></a>, <a href="#parameter-predefinedAcceleratorName"><code>predefinedAcceleratorName</code></a></td>
    <td></td>
    <td>Enable predefined accelerator.</td>
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
<tr id="parameter-applicationAcceleratorName">
    <td><CopyableCode code="applicationAcceleratorName" /></td>
    <td><code>string</code></td>
    <td>The name of the application accelerator.</td>
</tr>
<tr id="parameter-predefinedAcceleratorName">
    <td><CopyableCode code="predefinedAcceleratorName" /></td>
    <td><code>string</code></td>
    <td>The name of the predefined accelerator.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Service resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription ID which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Get the predefined accelerator.

```sql
SELECT
properties,
sku
FROM azure.spring_apps.predefined_accelerators
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND applicationAcceleratorName = '{{ applicationAcceleratorName }}' -- required
AND predefinedAcceleratorName = '{{ predefinedAcceleratorName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Handle requests to list all predefined accelerators.

```sql
SELECT
properties,
sku
FROM azure.spring_apps.predefined_accelerators
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND applicationAcceleratorName = '{{ applicationAcceleratorName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="disable"
    values={[
        { label: 'disable', value: 'disable' },
        { label: 'enable', value: 'enable' }
    ]}
>
<TabItem value="disable">

Disable predefined accelerator.

```sql
EXEC azure.spring_apps.predefined_accelerators.disable 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@applicationAcceleratorName='{{ applicationAcceleratorName }}' --required, 
@predefinedAcceleratorName='{{ predefinedAcceleratorName }}' --required
;
```
</TabItem>
<TabItem value="enable">

Enable predefined accelerator.

```sql
EXEC azure.spring_apps.predefined_accelerators.enable 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@applicationAcceleratorName='{{ applicationAcceleratorName }}' --required, 
@predefinedAcceleratorName='{{ predefinedAcceleratorName }}' --required
;
```
</TabItem>
</Tabs>
