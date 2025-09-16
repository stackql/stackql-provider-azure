--- 
title: commitment_plans_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - commitment_plans_plans
  - cognitive_services
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

Creates, updates, deletes, gets or lists a <code>commitment_plans_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>commitment_plans_plans</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.commitment_plans_plans" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Successfully retrieved commitment plan resources.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind (type) of cognitive service account.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of Cognitive Services account commitment plan.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The resource model definition representing SKU</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-commitmentPlanName"><code>commitmentPlanName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns a Cognitive Services commitment plan specified by the parameters.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-commitmentPlanName"><code>commitmentPlanName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Create Cognitive Services commitment plan.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-commitmentPlanName"><code>commitmentPlanName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Create Cognitive Services commitment plan.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-commitmentPlanName"><code>commitmentPlanName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a Cognitive Services commitment plan from the resource group. </td>
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
<tr id="parameter-commitmentPlanName">
    <td><CopyableCode code="commitmentPlanName" /></td>
    <td><code>string</code></td>
    <td>The name of the commitmentPlan associated with the Cognitive Services Account</td>
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
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Returns a Cognitive Services commitment plan specified by the parameters.

```sql
SELECT
etag,
kind,
location,
properties,
sku,
systemData,
tags
FROM azure.cognitive_services.commitment_plans_plans
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND commitmentPlanName = '{{ commitmentPlanName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Create Cognitive Services commitment plan.

```sql
INSERT INTO azure.cognitive_services.commitment_plans_plans (
data__kind,
data__sku,
data__tags,
data__location,
data__properties,
resourceGroupName,
commitmentPlanName,
subscriptionId
)
SELECT 
'{{ kind }}',
'{{ sku }}',
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ commitmentPlanName }}',
'{{ subscriptionId }}'
RETURNING
etag,
kind,
location,
properties,
sku,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: commitment_plans_plans
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the commitment_plans_plans resource.
    - name: commitmentPlanName
      value: string
      description: Required parameter for the commitment_plans_plans resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the commitment_plans_plans resource.
    - name: kind
      value: string
      description: |
        The kind (type) of cognitive service account.
    - name: sku
      value: object
      description: |
        The resource model definition representing SKU
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: properties
      value: object
      description: |
        Properties of Cognitive Services account commitment plan.
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

Create Cognitive Services commitment plan.

```sql
UPDATE azure.cognitive_services.commitment_plans_plans
SET 
data__sku = '{{ sku }}',
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND commitmentPlanName = '{{ commitmentPlanName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
etag,
kind,
location,
properties,
sku,
systemData,
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

Deletes a Cognitive Services commitment plan from the resource group. 

```sql
DELETE FROM azure.cognitive_services.commitment_plans_plans
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND commitmentPlanName = '{{ commitmentPlanName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
