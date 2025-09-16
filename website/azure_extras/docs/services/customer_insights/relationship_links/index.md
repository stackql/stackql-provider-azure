--- 
title: relationship_links
hide_title: false
hide_table_of_contents: false
keywords:
  - relationship_links
  - customer_insights
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>relationship_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>relationship_links</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.relationship_links" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_hub', value: 'list_by_hub' }
    ]}
>
<TabItem value="get">

OK. Successfully get the relationship link.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The definition of relationship link.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_hub">

OK. Successfully get all the relationship links in the hub.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The definition of relationship link.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hubName"><code>hubName</code></a>, <a href="#parameter-relationshipLinkName"><code>relationshipLinkName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about the specified relationship Link.</td>
</tr>
<tr>
    <td><a href="#list_by_hub"><CopyableCode code="list_by_hub" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hubName"><code>hubName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all relationship links in the hub.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hubName"><code>hubName</code></a>, <a href="#parameter-relationshipLinkName"><code>relationshipLinkName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a relationship link or updates an existing relationship link within a hub.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hubName"><code>hubName</code></a>, <a href="#parameter-relationshipLinkName"><code>relationshipLinkName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a relationship link within a hub.</td>
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
<tr id="parameter-hubName">
    <td><CopyableCode code="hubName" /></td>
    <td><code>string</code></td>
    <td>The name of the hub.</td>
</tr>
<tr id="parameter-relationshipLinkName">
    <td><CopyableCode code="relationshipLinkName" /></td>
    <td><code>string</code></td>
    <td>The name of the relationship.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_hub', value: 'list_by_hub' }
    ]}
>
<TabItem value="get">

Gets information about the specified relationship Link.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.customer_insights.relationship_links
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND hubName = '{{ hubName }}' -- required
AND relationshipLinkName = '{{ relationshipLinkName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_hub">

Gets all relationship links in the hub.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.customer_insights.relationship_links
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND hubName = '{{ hubName }}' -- required
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

Creates a relationship link or updates an existing relationship link within a hub.

```sql
INSERT INTO azure_extras.customer_insights.relationship_links (
data__properties,
resourceGroupName,
hubName,
relationshipLinkName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ hubName }}',
'{{ relationshipLinkName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: relationship_links
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the relationship_links resource.
    - name: hubName
      value: string
      description: Required parameter for the relationship_links resource.
    - name: relationshipLinkName
      value: string
      description: Required parameter for the relationship_links resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the relationship_links resource.
    - name: properties
      value: object
      description: |
        The definition of relationship link.
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

Deletes a relationship link within a hub.

```sql
DELETE FROM azure_extras.customer_insights.relationship_links
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND hubName = '{{ hubName }}' --required
AND relationshipLinkName = '{{ relationshipLinkName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
