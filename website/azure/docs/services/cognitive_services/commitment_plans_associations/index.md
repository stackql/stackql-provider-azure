--- 
title: commitment_plans_associations
hide_title: false
hide_table_of_contents: false
keywords:
  - commitment_plans_associations
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

Creates, updates, deletes, gets or lists a <code>commitment_plans_associations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>commitment_plans_associations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.commitment_plans_associations" /></td></tr>
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

OK -- Get the Commitment Plan Association successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of Cognitive Services account commitment plan association.</td>
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
<TabItem value="list">

Successfully retrieved Commitment Plan Associations.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of Cognitive Services account commitment plan association.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-commitmentPlanName"><code>commitmentPlanName</code></a>, <a href="#parameter-commitmentPlanAssociationName"><code>commitmentPlanAssociationName</code></a></td>
    <td></td>
    <td>Gets the association of the Cognitive Services commitment plan.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-commitmentPlanName"><code>commitmentPlanName</code></a></td>
    <td></td>
    <td>Gets the associations of the Cognitive Services commitment plan.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-commitmentPlanName"><code>commitmentPlanName</code></a>, <a href="#parameter-commitmentPlanAssociationName"><code>commitmentPlanAssociationName</code></a></td>
    <td></td>
    <td>Create or update the association of the Cognitive Services commitment plan.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-commitmentPlanName"><code>commitmentPlanName</code></a>, <a href="#parameter-commitmentPlanAssociationName"><code>commitmentPlanAssociationName</code></a></td>
    <td></td>
    <td>Deletes the association of the Cognitive Services commitment plan.</td>
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
<tr id="parameter-commitmentPlanAssociationName">
    <td><CopyableCode code="commitmentPlanAssociationName" /></td>
    <td><code>string</code></td>
    <td>The name of the commitment plan association with the Cognitive Services Account</td>
</tr>
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
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the association of the Cognitive Services commitment plan.

```sql
SELECT
etag,
properties,
systemData,
tags
FROM azure.cognitive_services.commitment_plans_associations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND commitmentPlanName = '{{ commitmentPlanName }}' -- required
AND commitmentPlanAssociationName = '{{ commitmentPlanAssociationName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets the associations of the Cognitive Services commitment plan.

```sql
SELECT
etag,
properties,
systemData,
tags
FROM azure.cognitive_services.commitment_plans_associations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND commitmentPlanName = '{{ commitmentPlanName }}' -- required
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

Create or update the association of the Cognitive Services commitment plan.

```sql
INSERT INTO azure.cognitive_services.commitment_plans_associations (
data__tags,
data__properties,
resourceGroupName,
subscriptionId,
commitmentPlanName,
commitmentPlanAssociationName
)
SELECT 
'{{ tags }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ commitmentPlanName }}',
'{{ commitmentPlanAssociationName }}'
RETURNING
etag,
properties,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: commitment_plans_associations
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the commitment_plans_associations resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the commitment_plans_associations resource.
    - name: commitmentPlanName
      value: string
      description: Required parameter for the commitment_plans_associations resource.
    - name: commitmentPlanAssociationName
      value: string
      description: Required parameter for the commitment_plans_associations resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: properties
      value: object
      description: |
        Properties of Cognitive Services account commitment plan association.
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

Deletes the association of the Cognitive Services commitment plan.

```sql
DELETE FROM azure.cognitive_services.commitment_plans_associations
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND commitmentPlanName = '{{ commitmentPlanName }}' --required
AND commitmentPlanAssociationName = '{{ commitmentPlanAssociationName }}' --required
;
```
</TabItem>
</Tabs>
