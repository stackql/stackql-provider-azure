--- 
title: tenant_accesses
hide_title: false
hide_table_of_contents: false
keywords:
  - tenant_accesses
  - api_management
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

Creates, updates, deletes, gets or lists a <code>tenant_accesses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tenant_accesses</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.tenant_accesses" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_service', value: 'list_by_service' }
    ]}
>
<TabItem value="get">

Tenant Access information.

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
    <td>AccessInformation entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_service">

Lists a collection of TenantAccessInfo entities.

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
    <td>AccessInformation entity contract properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accessName"><code>accessName</code></a></td>
    <td></td>
    <td>Get tenant access information details without secrets.</td>
</tr>
<tr>
    <td><a href="#list_by_service"><CopyableCode code="list_by_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Returns list of access infos - for Git and Management endpoints.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-accessName"><code>accessName</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Update tenant access information details.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-accessName"><code>accessName</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Update tenant access information details.</td>
</tr>
<tr>
    <td><a href="#regenerate_primary_key"><CopyableCode code="regenerate_primary_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accessName"><code>accessName</code></a></td>
    <td></td>
    <td>Regenerate primary access key</td>
</tr>
<tr>
    <td><a href="#regenerate_secondary_key"><CopyableCode code="regenerate_secondary_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accessName"><code>accessName</code></a></td>
    <td></td>
    <td>Regenerate secondary access key</td>
</tr>
<tr>
    <td><a href="#regenerate_git_primary_key"><CopyableCode code="regenerate_git_primary_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accessName"><code>accessName</code></a></td>
    <td></td>
    <td>Regenerate primary access key for GIT.</td>
</tr>
<tr>
    <td><a href="#regenerate_git_secondary_key"><CopyableCode code="regenerate_git_secondary_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accessName"><code>accessName</code></a></td>
    <td></td>
    <td>Regenerate secondary access key for GIT.</td>
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
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update.</td>
</tr>
<tr id="parameter-accessName">
    <td><CopyableCode code="accessName" /></td>
    <td><code>string</code></td>
    <td>The identifier of the Access configuration.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the API Management service.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Not used</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_service', value: 'list_by_service' }
    ]}
>
<TabItem value="get">

Get tenant access information details without secrets.

```sql
SELECT
properties
FROM azure.api_management.tenant_accesses
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND accessName = '{{ accessName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_service">

Returns list of access infos - for Git and Management endpoints.

```sql
SELECT
properties
FROM azure.api_management.tenant_accesses
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
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

Update tenant access information details.

```sql
INSERT INTO azure.api_management.tenant_accesses (
data__properties,
resourceGroupName,
serviceName,
accessName,
If-Match,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ serviceName }}',
'{{ accessName }}',
'{{ If-Match }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: tenant_accesses
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the tenant_accesses resource.
    - name: serviceName
      value: string
      description: Required parameter for the tenant_accesses resource.
    - name: accessName
      value: string
      description: Required parameter for the tenant_accesses resource.
    - name: If-Match
      value: string
      description: Required parameter for the tenant_accesses resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the tenant_accesses resource.
    - name: properties
      value: object
      description: |
        Tenant access information update parameter properties.
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

Update tenant access information details.

```sql
UPDATE azure.api_management.tenant_accesses
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND accessName = '{{ accessName }}' --required
AND If-Match = '{{ If-Match }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="regenerate_primary_key"
    values={[
        { label: 'regenerate_primary_key', value: 'regenerate_primary_key' },
        { label: 'regenerate_secondary_key', value: 'regenerate_secondary_key' },
        { label: 'regenerate_git_primary_key', value: 'regenerate_git_primary_key' },
        { label: 'regenerate_git_secondary_key', value: 'regenerate_git_secondary_key' }
    ]}
>
<TabItem value="regenerate_primary_key">

Regenerate primary access key

```sql
EXEC azure.api_management.tenant_accesses.regenerate_primary_key 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@accessName='{{ accessName }}' --required
;
```
</TabItem>
<TabItem value="regenerate_secondary_key">

Regenerate secondary access key

```sql
EXEC azure.api_management.tenant_accesses.regenerate_secondary_key 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@accessName='{{ accessName }}' --required
;
```
</TabItem>
<TabItem value="regenerate_git_primary_key">

Regenerate primary access key for GIT.

```sql
EXEC azure.api_management.tenant_accesses.regenerate_git_primary_key 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@accessName='{{ accessName }}' --required
;
```
</TabItem>
<TabItem value="regenerate_git_secondary_key">

Regenerate secondary access key for GIT.

```sql
EXEC azure.api_management.tenant_accesses.regenerate_git_secondary_key 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@accessName='{{ accessName }}' --required
;
```
</TabItem>
</Tabs>
