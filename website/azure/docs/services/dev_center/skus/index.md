--- 
title: skus
hide_title: false
hide_table_of_contents: false
keywords:
  - skus
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

Creates, updates, deletes, gets or lists a <code>skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>skus</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.skus" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_project"
    values={[
        { label: 'list_by_project', value: 'list_by_project' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the SKU. Ex - P3. It is typically a letter+number code</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>array</code></td>
    <td>Collection of name/value pairs to describe the SKU capabilities.</td>
</tr>
<tr>
    <td><CopyableCode code="capacity" /></td>
    <td><code>integer (int32)</code></td>
    <td>If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.</td>
</tr>
<tr>
    <td><CopyableCode code="family" /></td>
    <td><code>string</code></td>
    <td>If the service has different generations of hardware, for the same SKU, then that can be captured here.</td>
</tr>
<tr>
    <td><CopyableCode code="locations" /></td>
    <td><code>array</code></td>
    <td>SKU supported locations.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The name of the resource type</td>
</tr>
<tr>
    <td><CopyableCode code="size" /></td>
    <td><code>string</code></td>
    <td>The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. </td>
</tr>
<tr>
    <td><CopyableCode code="tier" /></td>
    <td><code>string</code></td>
    <td>This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the SKU. Ex - P3. It is typically a letter+number code</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>array</code></td>
    <td>Collection of name/value pairs to describe the SKU capabilities.</td>
</tr>
<tr>
    <td><CopyableCode code="capacity" /></td>
    <td><code>integer (int32)</code></td>
    <td>If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.</td>
</tr>
<tr>
    <td><CopyableCode code="family" /></td>
    <td><code>string</code></td>
    <td>If the service has different generations of hardware, for the same SKU, then that can be captured here.</td>
</tr>
<tr>
    <td><CopyableCode code="locations" /></td>
    <td><code>array</code></td>
    <td>SKU supported locations.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The name of the resource type</td>
</tr>
<tr>
    <td><CopyableCode code="size" /></td>
    <td><code>string</code></td>
    <td>The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. </td>
</tr>
<tr>
    <td><CopyableCode code="tier" /></td>
    <td><code>string</code></td>
    <td>This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.</td>
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
    <td><a href="#list_by_project"><CopyableCode code="list_by_project" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a></td>
    <td></td>
    <td>Lists SKUs available to the project</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Lists the Microsoft.DevCenter SKUs available in a subscription</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_project"
    values={[
        { label: 'list_by_project', value: 'list_by_project' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="list_by_project">

Lists SKUs available to the project

```sql
SELECT
name,
capabilities,
capacity,
family,
locations,
resourceType,
size,
tier
FROM azure.dev_center.skus
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND projectName = '{{ projectName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Lists the Microsoft.DevCenter SKUs available in a subscription

```sql
SELECT
name,
capabilities,
capacity,
family,
locations,
resourceType,
size,
tier
FROM azure.dev_center.skus
;
```
</TabItem>
</Tabs>
