--- 
title: collector_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - collector_policies
  - network_function
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

Creates, updates, deletes, gets or lists a <code>collector_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>collector_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network_function.collector_policies" /></td></tr>
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

Request successful. The operation returns the collector policy resource.

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
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Collector Policy.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. The operation returns a list of collector policies in a azure traffic collector.

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
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Collector Policy.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-azureTrafficCollectorName"><code>azureTrafficCollectorName</code></a>, <a href="#parameter-collectorPolicyName"><code>collectorPolicyName</code></a></td>
    <td></td>
    <td>Gets the collector policy in a specified Traffic Collector</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-azureTrafficCollectorName"><code>azureTrafficCollectorName</code></a></td>
    <td></td>
    <td>Return list of Collector policies in a Azure Traffic Collector</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-azureTrafficCollectorName"><code>azureTrafficCollectorName</code></a>, <a href="#parameter-collectorPolicyName"><code>collectorPolicyName</code></a></td>
    <td></td>
    <td>Creates or updates a Collector Policy resource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-azureTrafficCollectorName"><code>azureTrafficCollectorName</code></a>, <a href="#parameter-collectorPolicyName"><code>collectorPolicyName</code></a></td>
    <td></td>
    <td>Deletes a specified Collector Policy resource.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-azureTrafficCollectorName"><code>azureTrafficCollectorName</code></a>, <a href="#parameter-collectorPolicyName"><code>collectorPolicyName</code></a></td>
    <td></td>
    <td>Updates the specified Collector Policy tags.</td>
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
<tr id="parameter-azureTrafficCollectorName">
    <td><CopyableCode code="azureTrafficCollectorName" /></td>
    <td><code>string</code></td>
    <td>Azure Traffic Collector name</td>
</tr>
<tr id="parameter-collectorPolicyName">
    <td><CopyableCode code="collectorPolicyName" /></td>
    <td><code>string</code></td>
    <td>Collector Policy Name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
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

Gets the collector policy in a specified Traffic Collector

```sql
SELECT
id,
name,
etag,
location,
properties,
systemData,
tags,
type
FROM azure.network_function.collector_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND azureTrafficCollectorName = '{{ azureTrafficCollectorName }}' -- required
AND collectorPolicyName = '{{ collectorPolicyName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Return list of Collector policies in a Azure Traffic Collector

```sql
SELECT
id,
name,
etag,
location,
properties,
systemData,
tags,
type
FROM azure.network_function.collector_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND azureTrafficCollectorName = '{{ azureTrafficCollectorName }}' -- required
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

Creates or updates a Collector Policy resource

```sql
INSERT INTO azure.network_function.collector_policies (
data__properties,
data__location,
data__tags,
resourceGroupName,
subscriptionId,
azureTrafficCollectorName,
collectorPolicyName
)
SELECT 
'{{ properties }}',
'{{ location }}',
'{{ tags }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ azureTrafficCollectorName }}',
'{{ collectorPolicyName }}'
RETURNING
id,
name,
etag,
location,
properties,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: collector_policies
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the collector_policies resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the collector_policies resource.
    - name: azureTrafficCollectorName
      value: string
      description: Required parameter for the collector_policies resource.
    - name: collectorPolicyName
      value: string
      description: Required parameter for the collector_policies resource.
    - name: properties
      value: object
      description: |
        Properties of the Collector Policy.
    - name: location
      value: string
      description: |
        Resource location.
    - name: tags
      value: object
      description: |
        Resource tags.
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

Deletes a specified Collector Policy resource.

```sql
DELETE FROM azure.network_function.collector_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND azureTrafficCollectorName = '{{ azureTrafficCollectorName }}' --required
AND collectorPolicyName = '{{ collectorPolicyName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_tags"
    values={[
        { label: 'update_tags', value: 'update_tags' }
    ]}
>
<TabItem value="update_tags">

Updates the specified Collector Policy tags.

```sql
EXEC azure.network_function.collector_policies.update_tags 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@azureTrafficCollectorName='{{ azureTrafficCollectorName }}' --required, 
@collectorPolicyName='{{ collectorPolicyName }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
</Tabs>
