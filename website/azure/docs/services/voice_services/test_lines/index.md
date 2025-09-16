--- 
title: test_lines
hide_title: false
hide_table_of_contents: false
keywords:
  - test_lines
  - voice_services
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

Creates, updates, deletes, gets or lists a <code>test_lines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>test_lines</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.voice_services.test_lines" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_communications_gateway', value: 'list_by_communications_gateway' }
    ]}
>
<TabItem value="get">

ARM operation completed successfully.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_communications_gateway">

ARM operation completed successfully.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-communicationsGatewayName"><code>communicationsGatewayName</code></a>, <a href="#parameter-testLineName"><code>testLineName</code></a></td>
    <td></td>
    <td>Get a TestLine</td>
</tr>
<tr>
    <td><a href="#list_by_communications_gateway"><CopyableCode code="list_by_communications_gateway" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-communicationsGatewayName"><code>communicationsGatewayName</code></a></td>
    <td></td>
    <td>List TestLine resources by CommunicationsGateway</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-communicationsGatewayName"><code>communicationsGatewayName</code></a>, <a href="#parameter-testLineName"><code>testLineName</code></a></td>
    <td></td>
    <td>Create a TestLine</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-communicationsGatewayName"><code>communicationsGatewayName</code></a>, <a href="#parameter-testLineName"><code>testLineName</code></a></td>
    <td></td>
    <td>Update a TestLine</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-communicationsGatewayName"><code>communicationsGatewayName</code></a>, <a href="#parameter-testLineName"><code>testLineName</code></a></td>
    <td></td>
    <td>Delete a TestLine</td>
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
<tr id="parameter-communicationsGatewayName">
    <td><CopyableCode code="communicationsGatewayName" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for this deployment</td>
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
<tr id="parameter-testLineName">
    <td><CopyableCode code="testLineName" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for this test line</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_communications_gateway', value: 'list_by_communications_gateway' }
    ]}
>
<TabItem value="get">

Get a TestLine

```sql
SELECT
location,
properties,
tags
FROM azure.voice_services.test_lines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND communicationsGatewayName = '{{ communicationsGatewayName }}' -- required
AND testLineName = '{{ testLineName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_communications_gateway">

List TestLine resources by CommunicationsGateway

```sql
SELECT
location,
properties,
tags
FROM azure.voice_services.test_lines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND communicationsGatewayName = '{{ communicationsGatewayName }}' -- required
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

Create a TestLine

```sql
INSERT INTO azure.voice_services.test_lines (
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
communicationsGatewayName,
testLineName
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ communicationsGatewayName }}',
'{{ testLineName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: test_lines
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the test_lines resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the test_lines resource.
    - name: communicationsGatewayName
      value: string
      description: Required parameter for the test_lines resource.
    - name: testLineName
      value: string
      description: Required parameter for the test_lines resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Update a TestLine

```sql
UPDATE azure.voice_services.test_lines
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND communicationsGatewayName = '{{ communicationsGatewayName }}' --required
AND testLineName = '{{ testLineName }}' --required
RETURNING
location,
properties,
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

Delete a TestLine

```sql
DELETE FROM azure.voice_services.test_lines
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND communicationsGatewayName = '{{ communicationsGatewayName }}' --required
AND testLineName = '{{ testLineName }}' --required
;
```
</TabItem>
</Tabs>
