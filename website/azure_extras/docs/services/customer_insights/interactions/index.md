--- 
title: interactions
hide_title: false
hide_table_of_contents: false
keywords:
  - interactions
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

Creates, updates, deletes, gets or lists an <code>interactions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>interactions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.interactions" /></td></tr>
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

OK. Successfully get the interaction.

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
    <td>The Interaction Type Definition</td>
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

OK. Successfully get all the interactions in the hub.

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
    <td>The Interaction Type Definition</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hubName"><code>hubName</code></a>, <a href="#parameter-interactionName"><code>interactionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-locale-code"><code>locale-code</code></a></td>
    <td>Gets information about the specified interaction.</td>
</tr>
<tr>
    <td><a href="#list_by_hub"><CopyableCode code="list_by_hub" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hubName"><code>hubName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-locale-code"><code>locale-code</code></a></td>
    <td>Gets all interactions in the hub.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hubName"><code>hubName</code></a>, <a href="#parameter-interactionName"><code>interactionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates an interaction or updates an existing interaction within a hub.</td>
</tr>
<tr>
    <td><a href="#suggest_relationship_links"><CopyableCode code="suggest_relationship_links" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hubName"><code>hubName</code></a>, <a href="#parameter-interactionName"><code>interactionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Suggests relationships to create relationship links.</td>
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
<tr id="parameter-interactionName">
    <td><CopyableCode code="interactionName" /></td>
    <td><code>string</code></td>
    <td>The name of the interaction.</td>
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
<tr id="parameter-locale-code">
    <td><CopyableCode code="locale-code" /></td>
    <td><code>string</code></td>
    <td>Locale of interaction to retrieve, default is en-us.</td>
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

Gets information about the specified interaction.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.customer_insights.interactions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND hubName = '{{ hubName }}' -- required
AND interactionName = '{{ interactionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND locale-code = '{{ locale-code }}'
;
```
</TabItem>
<TabItem value="list_by_hub">

Gets all interactions in the hub.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.customer_insights.interactions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND hubName = '{{ hubName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND locale-code = '{{ locale-code }}'
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

Creates an interaction or updates an existing interaction within a hub.

```sql
INSERT INTO azure_extras.customer_insights.interactions (
data__properties,
resourceGroupName,
hubName,
interactionName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ hubName }}',
'{{ interactionName }}',
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
- name: interactions
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the interactions resource.
    - name: hubName
      value: string
      description: Required parameter for the interactions resource.
    - name: interactionName
      value: string
      description: Required parameter for the interactions resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the interactions resource.
    - name: properties
      value: object
      description: |
        The Interaction Type Definition
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="suggest_relationship_links"
    values={[
        { label: 'suggest_relationship_links', value: 'suggest_relationship_links' }
    ]}
>
<TabItem value="suggest_relationship_links">

Suggests relationships to create relationship links.

```sql
EXEC azure_extras.customer_insights.interactions.suggest_relationship_links 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@hubName='{{ hubName }}' --required, 
@interactionName='{{ interactionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
