--- 
title: activations
hide_title: false
hide_table_of_contents: false
keywords:
  - activations
  - azure_bridge_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>activations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>activations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_bridge_admin.activations" /></td></tr>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>URI of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>List of key value pairs.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of resource.</td>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>URI of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>List of key value pairs.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-activationName"><code>activationName</code></a></td>
    <td></td>
    <td>Returns activation name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Returns the list of activations.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-activationName"><code>activationName</code></a></td>
    <td></td>
    <td>Create a new activation.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-activationName"><code>activationName</code></a></td>
    <td></td>
    <td>Delete an activation.</td>
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
<tr id="parameter-activationName">
    <td><CopyableCode code="activationName" /></td>
    <td><code>string</code></td>
    <td>Name of the activation.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group the resource is located under.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription.The subscription ID forms part of the URI for every service call.</td>
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

Returns activation name.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure_stack.azure_bridge_admin.activations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND activationName = '{{ activationName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns the list of activations.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure_stack.azure_bridge_admin.activations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
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

Create a new activation.

```sql
INSERT INTO azure_stack.azure_bridge_admin.activations (
data__displayName,
data__azureRegistrationResourceIdentifier,
data__provisioningState,
data__expiration,
data__marketplaceSyndicationEnabled,
data__usageReportingEnabled,
subscriptionId,
resourceGroupName,
activationName
)
SELECT 
'{{ displayName }}',
'{{ azureRegistrationResourceIdentifier }}',
'{{ provisioningState }}',
'{{ expiration }}',
{{ marketplaceSyndicationEnabled }},
{{ usageReportingEnabled }},
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ activationName }}'
RETURNING
id,
name,
location,
properties,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: activations
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the activations resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the activations resource.
    - name: activationName
      value: string
      description: Required parameter for the activations resource.
    - name: displayName
      value: string
      description: |
        Name displayed for the product.
    - name: azureRegistrationResourceIdentifier
      value: string
      description: |
        Azure registration resource identifier.
    - name: provisioningState
      value: string
      description: |
        Provisioning state of the resource.
      valid_values: ['Stopped', 'Starting', 'Running', 'Stopping', 'Succeeded', 'Downloading']
    - name: expiration
      value: string
      description: |
        The activation expiration.
    - name: marketplaceSyndicationEnabled
      value: boolean
      description: |
        Value indicating whether the marketplace syndication feature is enabled.
    - name: usageReportingEnabled
      value: boolean
      description: |
        Value indicating whether the usage reporting feature is enabled.
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

Delete an activation.

```sql
DELETE FROM azure_stack.azure_bridge_admin.activations
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND activationName = '{{ activationName }}' --required
;
```
</TabItem>
</Tabs>
