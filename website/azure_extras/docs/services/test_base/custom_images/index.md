--- 
title: custom_images
hide_title: false
hide_table_of_contents: false
keywords:
  - custom_images
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

Creates, updates, deletes, gets or lists a <code>custom_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>custom_images</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.custom_images" /></td></tr>
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

The test base custom image was successfully found.

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

The operation is completed.

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-customImageName"><code>customImageName</code></a></td>
    <td></td>
    <td>Gets a test base custom image.</td>
</tr>
<tr>
    <td><a href="#list_by_test_base_account"><CopyableCode code="list_by_test_base_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a></td>
    <td></td>
    <td>Lists all the custom images under a test base account.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-customImageName"><code>customImageName</code></a></td>
    <td></td>
    <td>Creates a test base custom image.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-customImageName"><code>customImageName</code></a></td>
    <td></td>
    <td>Deletes a test base custom image.</td>
</tr>
<tr>
    <td><a href="#check_image_name_availability"><CopyableCode code="check_image_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-definitionName"><code>definitionName</code></a>, <a href="#parameter-versionName"><code>versionName</code></a></td>
    <td></td>
    <td>Checks that the test vase custom image generated from VHD resource has valid and unique definition and version, return architecture and OS state of potential existing image definition.</td>
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
<tr id="parameter-customImageName">
    <td><CopyableCode code="customImageName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the test base custom image.</td>
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

Gets a test base custom image.

```sql
SELECT
properties
FROM azure_extras.test_base.custom_images
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND customImageName = '{{ customImageName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_test_base_account">

Lists all the custom images under a test base account.

```sql
SELECT
properties
FROM azure_extras.test_base.custom_images
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

Creates a test base custom image.

```sql
INSERT INTO azure_extras.test_base.custom_images (
data__properties,
subscriptionId,
resourceGroupName,
testBaseAccountName,
customImageName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ testBaseAccountName }}',
'{{ customImageName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: custom_images
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the custom_images resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the custom_images resource.
    - name: testBaseAccountName
      value: string
      description: Required parameter for the custom_images resource.
    - name: customImageName
      value: string
      description: Required parameter for the custom_images resource.
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

Deletes a test base custom image.

```sql
DELETE FROM azure_extras.test_base.custom_images
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND testBaseAccountName = '{{ testBaseAccountName }}' --required
AND customImageName = '{{ customImageName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_image_name_availability"
    values={[
        { label: 'check_image_name_availability', value: 'check_image_name_availability' }
    ]}
>
<TabItem value="check_image_name_availability">

Checks that the test vase custom image generated from VHD resource has valid and unique definition and version, return architecture and OS state of potential existing image definition.

```sql
EXEC azure_extras.test_base.custom_images.check_image_name_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@testBaseAccountName='{{ testBaseAccountName }}' --required 
@@json=
'{
"definitionName": "{{ definitionName }}", 
"versionName": "{{ versionName }}"
}'
;
```
</TabItem>
</Tabs>
