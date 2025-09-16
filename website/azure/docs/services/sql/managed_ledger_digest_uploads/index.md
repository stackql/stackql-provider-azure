--- 
title: managed_ledger_digest_uploads
hide_title: false
hide_table_of_contents: false
keywords:
  - managed_ledger_digest_uploads
  - sql
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

Creates, updates, deletes, gets or lists a <code>managed_ledger_digest_uploads</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>managed_ledger_digest_uploads</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.managed_ledger_digest_uploads" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_database', value: 'list_by_database' }
    ]}
>
<TabItem value="get">

Successfully retrieved the ledger digest configuration.

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
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_database">

Successfully retrieved ledger upload settings.

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
    <td>Resource properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-ledgerDigestUploads"><code>ledgerDigestUploads</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the current ledger digest upload configuration for a database.</td>
</tr>
<tr>
    <td><a href="#list_by_database"><CopyableCode code="list_by_database" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all ledger digest upload settings on a database.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-ledgerDigestUploads"><code>ledgerDigestUploads</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Enables upload ledger digests to an Azure Storage account or an Azure Confidential Ledger instance.</td>
</tr>
<tr>
    <td><a href="#disable"><CopyableCode code="disable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-ledgerDigestUploads"><code>ledgerDigestUploads</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Disables uploading ledger digests to an Azure Storage account or an Azure Confidential Ledger instance.</td>
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
<tr id="parameter-databaseName">
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The name of the database.</td>
</tr>
<tr id="parameter-ledgerDigestUploads">
    <td><CopyableCode code="ledgerDigestUploads" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-managedInstanceName">
    <td><CopyableCode code="managedInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of the managed instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_database', value: 'list_by_database' }
    ]}
>
<TabItem value="get">

Gets the current ledger digest upload configuration for a database.

```sql
SELECT
properties
FROM azure.sql.managed_ledger_digest_uploads
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND ledgerDigestUploads = '{{ ledgerDigestUploads }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_database">

Gets all ledger digest upload settings on a database.

```sql
SELECT
properties
FROM azure.sql.managed_ledger_digest_uploads
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
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

Enables upload ledger digests to an Azure Storage account or an Azure Confidential Ledger instance.

```sql
INSERT INTO azure.sql.managed_ledger_digest_uploads (
data__properties,
resourceGroupName,
managedInstanceName,
databaseName,
ledgerDigestUploads,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ managedInstanceName }}',
'{{ databaseName }}',
'{{ ledgerDigestUploads }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: managed_ledger_digest_uploads
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the managed_ledger_digest_uploads resource.
    - name: managedInstanceName
      value: string
      description: Required parameter for the managed_ledger_digest_uploads resource.
    - name: databaseName
      value: string
      description: Required parameter for the managed_ledger_digest_uploads resource.
    - name: ledgerDigestUploads
      value: string
      description: Required parameter for the managed_ledger_digest_uploads resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the managed_ledger_digest_uploads resource.
    - name: properties
      value: object
      description: |
        Resource properties.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="disable"
    values={[
        { label: 'disable', value: 'disable' }
    ]}
>
<TabItem value="disable">

Disables uploading ledger digests to an Azure Storage account or an Azure Confidential Ledger instance.

```sql
EXEC azure.sql.managed_ledger_digest_uploads.disable 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@ledgerDigestUploads='{{ ledgerDigestUploads }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
