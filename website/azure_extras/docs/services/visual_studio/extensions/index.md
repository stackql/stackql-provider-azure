--- 
title: extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - extensions
  - visual_studio
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

Creates, updates, deletes, gets or lists an <code>extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>extensions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.visual_studio.extensions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_account', value: 'list_by_account' }
    ]}
>
<TabItem value="get">

The operation succeeded. The response contains the extension resource details for the specified account.

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
    <td>Unique identifier of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The extension plan that was purchased.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
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
<TabItem value="list_by_account">

The operation succeeded. The response contains all extension resource details for the specified account.

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
    <td>Unique identifier of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The extension plan that was purchased.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountResourceName"><code>accountResourceName</code></a>, <a href="#parameter-extensionResourceName"><code>extensionResourceName</code></a></td>
    <td></td>
    <td>Gets the details of an extension associated with a Visual Studio Team Services account resource.</td>
</tr>
<tr>
    <td><a href="#list_by_account"><CopyableCode code="list_by_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountResourceName"><code>accountResourceName</code></a></td>
    <td></td>
    <td>Gets the details of the extension resources created within the resource group.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountResourceName"><code>accountResourceName</code></a>, <a href="#parameter-extensionResourceName"><code>extensionResourceName</code></a></td>
    <td></td>
    <td>Registers the extension with a Visual Studio Team Services account.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountResourceName"><code>accountResourceName</code></a>, <a href="#parameter-extensionResourceName"><code>extensionResourceName</code></a></td>
    <td></td>
    <td>Updates an existing extension registration for the Visual Studio Team Services account.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountResourceName"><code>accountResourceName</code></a>, <a href="#parameter-extensionResourceName"><code>extensionResourceName</code></a></td>
    <td></td>
    <td>Removes an extension resource registration for a Visual Studio Team Services account.</td>
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
<tr id="parameter-accountResourceName">
    <td><CopyableCode code="accountResourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Visual Studio Team Services account resource.</td>
</tr>
<tr id="parameter-extensionResourceName">
    <td><CopyableCode code="extensionResourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the extension.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription identifier.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_account', value: 'list_by_account' }
    ]}
>
<TabItem value="get">

Gets the details of an extension associated with a Visual Studio Team Services account resource.

```sql
SELECT
id,
name,
location,
plan,
properties,
tags,
type
FROM azure_extras.visual_studio.extensions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND accountResourceName = '{{ accountResourceName }}' -- required
AND extensionResourceName = '{{ extensionResourceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_account">

Gets the details of the extension resources created within the resource group.

```sql
SELECT
id,
name,
location,
plan,
properties,
tags,
type
FROM azure_extras.visual_studio.extensions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND accountResourceName = '{{ accountResourceName }}' -- required
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

Registers the extension with a Visual Studio Team Services account.

```sql
INSERT INTO azure_extras.visual_studio.extensions (
data__location,
data__plan,
data__properties,
data__tags,
resourceGroupName,
subscriptionId,
accountResourceName,
extensionResourceName
)
SELECT 
'{{ location }}',
'{{ plan }}',
'{{ properties }}',
'{{ tags }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ accountResourceName }}',
'{{ extensionResourceName }}'
RETURNING
id,
name,
location,
plan,
properties,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: extensions
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the extensions resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the extensions resource.
    - name: accountResourceName
      value: string
      description: Required parameter for the extensions resource.
    - name: extensionResourceName
      value: string
      description: Required parameter for the extensions resource.
    - name: location
      value: string
      description: |
        The Azure region of the Visual Studio account associated with this request (i.e 'southcentralus'.)
    - name: plan
      value: object
      description: |
        Extended information about the plan being purchased for this extension resource.
    - name: properties
      value: object
      description: |
        A dictionary of extended properties. This property is currently unused.
    - name: tags
      value: object
      description: |
        A dictionary of user-defined tags to be stored with the extension resource.
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

Updates an existing extension registration for the Visual Studio Team Services account.

```sql
UPDATE azure_extras.visual_studio.extensions
SET 
data__location = '{{ location }}',
data__plan = '{{ plan }}',
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND accountResourceName = '{{ accountResourceName }}' --required
AND extensionResourceName = '{{ extensionResourceName }}' --required
RETURNING
id,
name,
location,
plan,
properties,
tags,
type;
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

Removes an extension resource registration for a Visual Studio Team Services account.

```sql
DELETE FROM azure_extras.visual_studio.extensions
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND accountResourceName = '{{ accountResourceName }}' --required
AND extensionResourceName = '{{ extensionResourceName }}' --required
;
```
</TabItem>
</Tabs>
