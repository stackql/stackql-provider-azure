--- 
title: triggers
hide_title: false
hide_table_of_contents: false
keywords:
  - triggers
  - image_builder
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

Creates, updates, deletes, gets or lists a <code>triggers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>triggers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.image_builder.triggers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_image_template', value: 'list_by_image_template' }
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
    <td>The properties of a trigger</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_image_template">

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
    <td>The properties of a trigger</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-imageTemplateName"><code>imageTemplateName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a></td>
    <td></td>
    <td>Get the specified trigger for the specified image template resource</td>
</tr>
<tr>
    <td><a href="#list_by_image_template"><CopyableCode code="list_by_image_template" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-imageTemplateName"><code>imageTemplateName</code></a></td>
    <td></td>
    <td>List all triggers for the specified Image Template resource</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-imageTemplateName"><code>imageTemplateName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a></td>
    <td></td>
    <td>Create or update a trigger for the specified virtual machine image template</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-imageTemplateName"><code>imageTemplateName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a></td>
    <td></td>
    <td>Delete a trigger for the specified virtual machine image template</td>
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
<tr id="parameter-imageTemplateName">
    <td><CopyableCode code="imageTemplateName" /></td>
    <td><code>string</code></td>
    <td>The name of the image Template</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription Id forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-triggerName">
    <td><CopyableCode code="triggerName" /></td>
    <td><code>string</code></td>
    <td>The name of the trigger</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_image_template', value: 'list_by_image_template' }
    ]}
>
<TabItem value="get">

Get the specified trigger for the specified image template resource

```sql
SELECT
properties
FROM azure.image_builder.triggers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND imageTemplateName = '{{ imageTemplateName }}' -- required
AND triggerName = '{{ triggerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_image_template">

List all triggers for the specified Image Template resource

```sql
SELECT
properties
FROM azure.image_builder.triggers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND imageTemplateName = '{{ imageTemplateName }}' -- required
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

Create or update a trigger for the specified virtual machine image template

```sql
INSERT INTO azure.image_builder.triggers (
data__properties,
subscriptionId,
resourceGroupName,
imageTemplateName,
triggerName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ imageTemplateName }}',
'{{ triggerName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: triggers
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the triggers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the triggers resource.
    - name: imageTemplateName
      value: string
      description: Required parameter for the triggers resource.
    - name: triggerName
      value: string
      description: Required parameter for the triggers resource.
    - name: properties
      value: object
      description: |
        The properties of a trigger
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

Delete a trigger for the specified virtual machine image template

```sql
DELETE FROM azure.image_builder.triggers
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND imageTemplateName = '{{ imageTemplateName }}' --required
AND triggerName = '{{ triggerName }}' --required
;
```
</TabItem>
</Tabs>
