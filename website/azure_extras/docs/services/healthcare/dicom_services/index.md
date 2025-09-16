--- 
title: dicom_services
hide_title: false
hide_table_of_contents: false
keywords:
  - dicom_services
  - healthcare
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

Creates, updates, deletes, gets or lists a <code>dicom_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dicom_services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.healthcare.dicom_services" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_workspace', value: 'list_by_workspace' }
    ]}
>
<TabItem value="get">

The request was successful; the request was well-formed and received properly.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Setting indicating whether the service has a managed identity associated with it.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Dicom Service configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_workspace">

List of DICOM Services.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Setting indicating whether the service has a managed identity associated with it.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Dicom Service configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-dicomServiceName"><code>dicomServiceName</code></a></td>
    <td></td>
    <td>Gets the properties of the specified DICOM Service.</td>
</tr>
<tr>
    <td><a href="#list_by_workspace"><CopyableCode code="list_by_workspace" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>Lists all DICOM Services for the given workspace</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-dicomServiceName"><code>dicomServiceName</code></a></td>
    <td></td>
    <td>Creates or updates a DICOM Service resource with the specified parameters.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-dicomServiceName"><code>dicomServiceName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>Patch DICOM Service details.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dicomServiceName"><code>dicomServiceName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>Deletes a DICOM Service.</td>
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
<tr id="parameter-dicomServiceName">
    <td><CopyableCode code="dicomServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of DICOM Service resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the service instance.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of workspace resource.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_workspace', value: 'list_by_workspace' }
    ]}
>
<TabItem value="get">

Gets the properties of the specified DICOM Service.

```sql
SELECT
identity,
properties,
systemData
FROM azure_extras.healthcare.dicom_services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND dicomServiceName = '{{ dicomServiceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_workspace">

Lists all DICOM Services for the given workspace

```sql
SELECT
identity,
properties,
systemData
FROM azure_extras.healthcare.dicom_services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
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

Creates or updates a DICOM Service resource with the specified parameters.

```sql
INSERT INTO azure_extras.healthcare.dicom_services (
data__identity,
data__properties,
resourceGroupName,
subscriptionId,
workspaceName,
dicomServiceName
)
SELECT 
'{{ identity }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ workspaceName }}',
'{{ dicomServiceName }}'
RETURNING
identity,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: dicom_services
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the dicom_services resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the dicom_services resource.
    - name: workspaceName
      value: string
      description: Required parameter for the dicom_services resource.
    - name: dicomServiceName
      value: string
      description: Required parameter for the dicom_services resource.
    - name: identity
      value: object
      description: |
        Setting indicating whether the service has a managed identity associated with it.
    - name: properties
      value: object
      description: |
        Dicom Service configuration.
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

Patch DICOM Service details.

```sql
UPDATE azure_extras.healthcare.dicom_services
SET 
data__tags = '{{ tags }}',
data__identity = '{{ identity }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND dicomServiceName = '{{ dicomServiceName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
RETURNING
identity,
properties,
systemData;
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

Deletes a DICOM Service.

```sql
DELETE FROM azure_extras.healthcare.dicom_services
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dicomServiceName = '{{ dicomServiceName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
;
```
</TabItem>
</Tabs>
