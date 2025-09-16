--- 
title: files
hide_title: false
hide_table_of_contents: false
keywords:
  - files
  - data_migration
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

Creates, updates, deletes, gets or lists a <code>files</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>files</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.files" /></td></tr>
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

A file resource

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>HTTP strong entity tag value. This is ignored if submitted.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Custom file properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of files

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>HTTP strong entity tag value. This is ignored if submitted.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Custom file properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td></td>
    <td></td>
    <td>The files resource is a nested, proxy-only resource representing a file stored under the project resource. This method retrieves information about a file.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The project resource is a nested resource representing a stored migration project. This method returns a list of files owned by a project resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td></td>
    <td></td>
    <td>The PUT method creates a new file or updates an existing one.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td></td>
    <td></td>
    <td>This method updates an existing file.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td></td>
    <td></td>
    <td>This method deletes a file.</td>
</tr>
<tr>
    <td><a href="#read"><CopyableCode code="read" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-fileName"><code>fileName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>This method is used for requesting storage information using which contents of the file can be downloaded.</td>
</tr>
<tr>
    <td><a href="#read_write"><CopyableCode code="read_write" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-fileName"><code>fileName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>This method is used for requesting information for reading and writing the file content.</td>
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
<tr id="parameter-fileName">
    <td><CopyableCode code="fileName" /></td>
    <td><code>string</code></td>
    <td>Name of the File</td>
</tr>
<tr id="parameter-groupName">
    <td><CopyableCode code="groupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group</td>
</tr>
<tr id="parameter-projectName">
    <td><CopyableCode code="projectName" /></td>
    <td><code>string</code></td>
    <td>Name of the project</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>Name of the service</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Version of the API</td>
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

The files resource is a nested, proxy-only resource representing a file stored under the project resource. This method retrieves information about a file.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.data_migration.files
;
```
</TabItem>
<TabItem value="list">

The project resource is a nested resource representing a stored migration project. This method returns a list of files owned by a project resource.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.data_migration.files
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND groupName = '{{ groupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND api-version = '{{ api-version }}'
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

The PUT method creates a new file or updates an existing one.

```sql
INSERT INTO azure.data_migration.files (
data__etag,
data__properties
)
SELECT 
'{{ etag }}',
'{{ properties }}'
RETURNING
id,
name,
etag,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: files
  props:
    - name: etag
      value: string
      description: |
        HTTP strong entity tag value. This is ignored if submitted.
    - name: properties
      value: object
      description: |
        Custom file properties
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

This method updates an existing file.

```sql
UPDATE azure.data_migration.files
SET 
data__etag = '{{ etag }}',
data__properties = '{{ properties }}'
RETURNING
id,
name,
etag,
properties,
systemData,
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

This method deletes a file.

```sql
DELETE FROM azure.data_migration.files
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="read"
    values={[
        { label: 'read', value: 'read' },
        { label: 'read_write', value: 'read_write' }
    ]}
>
<TabItem value="read">

This method is used for requesting storage information using which contents of the file can be downloaded.

```sql
EXEC azure.data_migration.files.read 
@subscriptionId='{{ subscriptionId }}' --required, 
@groupName='{{ groupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@projectName='{{ projectName }}' --required, 
@fileName='{{ fileName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="read_write">

This method is used for requesting information for reading and writing the file content.

```sql
EXEC azure.data_migration.files.read_write 
@subscriptionId='{{ subscriptionId }}' --required, 
@groupName='{{ groupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@projectName='{{ projectName }}' --required, 
@fileName='{{ fileName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
