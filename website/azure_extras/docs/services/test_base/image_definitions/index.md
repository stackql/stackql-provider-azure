--- 
title: image_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - image_definitions
  - test_base
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

Creates, updates, deletes, gets or lists an <code>image_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>image_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.image_definitions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_test_base_account', value: 'list_by_test_base_account' }
    ]}
>
<TabItem value="get">

Get the detailed properties of  the image definition if applicable.

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
    <td>Test Base custom image properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_test_base_account">

Get image definition existence and get detailed properties if applicable.

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
    <td>Test Base custom image properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-imageDefinitionName"><code>imageDefinitionName</code></a></td>
    <td></td>
    <td>Get image properties under the image definition name created by test base custom image which derived from 'VHD' source.</td>
</tr>
<tr>
    <td><a href="#list_by_test_base_account"><CopyableCode code="list_by_test_base_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a></td>
    <td></td>
    <td>List all image definition properties created by test base custom images which are derived from 'VHD' source.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-imageDefinitionName"><code>imageDefinitionName</code></a></td>
    <td></td>
    <td>Create image definition for test base custom images which are derived from 'VHD' source.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-imageDefinitionName"><code>imageDefinitionName</code></a></td>
    <td></td>
    <td>Delete a test base image definition resource.</td>
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
<tr id="parameter-imageDefinitionName">
    <td><CopyableCode code="imageDefinitionName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the test base image definition.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-testBaseAccountName">
    <td><CopyableCode code="testBaseAccountName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Account.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_test_base_account', value: 'list_by_test_base_account' }
    ]}
>
<TabItem value="get">

Get image properties under the image definition name created by test base custom image which derived from 'VHD' source.

```sql
SELECT
properties
FROM azure_extras.test_base.image_definitions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND imageDefinitionName = '{{ imageDefinitionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_test_base_account">

List all image definition properties created by test base custom images which are derived from 'VHD' source.

```sql
SELECT
properties
FROM azure_extras.test_base.image_definitions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
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

Create image definition for test base custom images which are derived from 'VHD' source.

```sql
INSERT INTO azure_extras.test_base.image_definitions (
data__properties,
subscriptionId,
resourceGroupName,
testBaseAccountName,
imageDefinitionName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ testBaseAccountName }}',
'{{ imageDefinitionName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: image_definitions
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the image_definitions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the image_definitions resource.
    - name: testBaseAccountName
      value: string
      description: Required parameter for the image_definitions resource.
    - name: imageDefinitionName
      value: string
      description: Required parameter for the image_definitions resource.
    - name: properties
      value: object
      description: |
        Test Base custom image properties.
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

Delete a test base image definition resource.

```sql
DELETE FROM azure_extras.test_base.image_definitions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND testBaseAccountName = '{{ testBaseAccountName }}' --required
AND imageDefinitionName = '{{ imageDefinitionName }}' --required
;
```
</TabItem>
</Tabs>
