--- 
title: integration_runtimes
hide_title: false
hide_table_of_contents: false
keywords:
  - integration_runtimes
  - data_factory
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

Creates, updates, deletes, gets or lists an <code>integration_runtimes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>integration_runtimes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.integration_runtimes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_factory', value: 'list_by_factory' }
    ]}
>
<TabItem value="get">

OK.

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
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Etag identifies change in the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Integration runtime properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_factory">

OK.

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
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Etag identifies change in the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Integration runtime properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Gets an integration runtime.</td>
</tr>
<tr>
    <td><a href="#list_by_factory"><CopyableCode code="list_by_factory" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Lists integration runtimes.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Creates or updates an integration runtime.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Updates an integration runtime.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes an integration runtime.</td>
</tr>
<tr>
    <td><a href="#regenerate_auth_key"><CopyableCode code="regenerate_auth_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Regenerates the authentication key for an integration runtime.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Starts a ManagedReserved type integration runtime.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Stops a ManagedReserved type integration runtime.</td>
</tr>
<tr>
    <td><a href="#sync_credentials"><CopyableCode code="sync_credentials" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Force the integration runtime to synchronize credentials across integration runtime nodes, and this will override the credentials across all worker nodes with those available on the dispatcher node. If you already have the latest credential backup file, you should manually import it (preferred) on any self-hosted integration runtime node than using this API directly.</td>
</tr>
<tr>
    <td><a href="#upgrade"><CopyableCode code="upgrade" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Upgrade self-hosted integration runtime to latest version if availability.</td>
</tr>
<tr>
    <td><a href="#remove_links"><CopyableCode code="remove_links" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Remove all linked integration runtimes under specific data factory in a self-hosted integration runtime.</td>
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
<tr id="parameter-factoryName">
    <td><CopyableCode code="factoryName" /></td>
    <td><code>string</code></td>
    <td>The factory name.</td>
</tr>
<tr id="parameter-integrationRuntimeName">
    <td><CopyableCode code="integrationRuntimeName" /></td>
    <td><code>string</code></td>
    <td>The integration runtime name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the integration runtime entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update.</td>
</tr>
<tr id="parameter-If-None-Match">
    <td><CopyableCode code="If-None-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the integration runtime entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_factory', value: 'list_by_factory' }
    ]}
>
<TabItem value="get">

Gets an integration runtime.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.data_factory.integration_runtimes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND factoryName = '{{ factoryName }}' -- required
AND integrationRuntimeName = '{{ integrationRuntimeName }}' -- required
AND api-version = '{{ api-version }}'
AND If-None-Match = '{{ If-None-Match }}'
;
```
</TabItem>
<TabItem value="list_by_factory">

Lists integration runtimes.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.data_factory.integration_runtimes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND factoryName = '{{ factoryName }}' -- required
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

Creates or updates an integration runtime.

```sql
INSERT INTO azure.data_factory.integration_runtimes (
data__properties,
subscriptionId,
resourceGroupName,
factoryName,
integrationRuntimeName,
api-version,
If-Match
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ factoryName }}',
'{{ integrationRuntimeName }}',
'{{ api-version }}',
'{{ If-Match }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: integration_runtimes
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the integration_runtimes resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the integration_runtimes resource.
    - name: factoryName
      value: string
      description: Required parameter for the integration_runtimes resource.
    - name: integrationRuntimeName
      value: string
      description: Required parameter for the integration_runtimes resource.
    - name: properties
      value: object
      description: |
        Integration runtime properties.
    - name: api-version
      value: string
      description: The API version.
    - name: If-Match
      value: string
      description: ETag of the integration runtime entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update.
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

Updates an integration runtime.

```sql
UPDATE azure.data_factory.integration_runtimes
SET 
data__autoUpdate = '{{ autoUpdate }}',
data__updateDelayOffset = '{{ updateDelayOffset }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND factoryName = '{{ factoryName }}' --required
AND integrationRuntimeName = '{{ integrationRuntimeName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
etag,
properties,
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

Deletes an integration runtime.

```sql
DELETE FROM azure.data_factory.integration_runtimes
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND factoryName = '{{ factoryName }}' --required
AND integrationRuntimeName = '{{ integrationRuntimeName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="regenerate_auth_key"
    values={[
        { label: 'regenerate_auth_key', value: 'regenerate_auth_key' },
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'sync_credentials', value: 'sync_credentials' },
        { label: 'upgrade', value: 'upgrade' },
        { label: 'remove_links', value: 'remove_links' }
    ]}
>
<TabItem value="regenerate_auth_key">

Regenerates the authentication key for an integration runtime.

```sql
EXEC azure.data_factory.integration_runtimes.regenerate_auth_key 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@integrationRuntimeName='{{ integrationRuntimeName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"keyName": "{{ keyName }}"
}'
;
```
</TabItem>
<TabItem value="start">

Starts a ManagedReserved type integration runtime.

```sql
EXEC azure.data_factory.integration_runtimes.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@integrationRuntimeName='{{ integrationRuntimeName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="stop">

Stops a ManagedReserved type integration runtime.

```sql
EXEC azure.data_factory.integration_runtimes.stop 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@integrationRuntimeName='{{ integrationRuntimeName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="sync_credentials">

Force the integration runtime to synchronize credentials across integration runtime nodes, and this will override the credentials across all worker nodes with those available on the dispatcher node. If you already have the latest credential backup file, you should manually import it (preferred) on any self-hosted integration runtime node than using this API directly.

```sql
EXEC azure.data_factory.integration_runtimes.sync_credentials 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@integrationRuntimeName='{{ integrationRuntimeName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="upgrade">

Upgrade self-hosted integration runtime to latest version if availability.

```sql
EXEC azure.data_factory.integration_runtimes.upgrade 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@integrationRuntimeName='{{ integrationRuntimeName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="remove_links">

Remove all linked integration runtimes under specific data factory in a self-hosted integration runtime.

```sql
EXEC azure.data_factory.integration_runtimes.remove_links 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@integrationRuntimeName='{{ integrationRuntimeName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"factoryName": "{{ factoryName }}"
}'
;
```
</TabItem>
</Tabs>
