--- 
title: applications
hide_title: false
hide_table_of_contents: false
keywords:
  - applications
  - managed_applications
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

Creates, updates, deletes, gets or lists an <code>applications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>applications</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_applications.applications" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_allowed_upgrade_plans', value: 'list_allowed_upgrade_plans' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' },
        { label: 'get_by_id', value: 'get_by_id' }
    ]}
>
<TabItem value="get">

OK - Returns the managed application.

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
    <td>The identity of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog. (pattern: <code>^[-\w\._,\(\)]+$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ID of the resource that manages this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The plan information.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The managed application properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_allowed_upgrade_plans">

OK - Returns an array of managed identity tokens.

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>A user defined name of the 3rd Party Artifact that is being procured.</td>
</tr>
<tr>
    <td><CopyableCode code="product" /></td>
    <td><code>string</code></td>
    <td>The 3rd Party artifact that is being procured. E.g. NewRelic. Product maps to the OfferID specified for the artifact at the time of Data Market onboarding. </td>
</tr>
<tr>
    <td><CopyableCode code="promotionCode" /></td>
    <td><code>string</code></td>
    <td>A publisher provided promotion code as provisioned in Data Market for the said product/artifact.</td>
</tr>
<tr>
    <td><CopyableCode code="publisher" /></td>
    <td><code>string</code></td>
    <td>The publisher of the 3rd Party Artifact that is being bought. E.g. NewRelic</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>The version of the desired product/artifact.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

OK - Returns an array of applications.

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
    <td>The identity of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog. (pattern: <code>^[-\w\._,\(\)]+$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ID of the resource that manages this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The plan information.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The managed application properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

OK - Returns an array of applications.

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
    <td>The identity of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog. (pattern: <code>^[-\w\._,\(\)]+$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ID of the resource that manages this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The plan information.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The managed application properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_id">

OK - Returns the managed application.

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
    <td>The identity of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog. (pattern: <code>^[-\w\._,\(\)]+$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ID of the resource that manages this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The plan information.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The managed application properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a></td>
    <td></td>
    <td>Gets the managed application.</td>
</tr>
<tr>
    <td><a href="#list_allowed_upgrade_plans"><CopyableCode code="list_allowed_upgrade_plans" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a></td>
    <td></td>
    <td>List allowed upgrade plans for application.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Lists all the applications within a resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all the applications within a subscription.</td>
</tr>
<tr>
    <td><a href="#get_by_id"><CopyableCode code="get_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-applicationId"><code>applicationId</code></a></td>
    <td></td>
    <td>Gets the managed application.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a>, <a href="#parameter-data__kind"><code>data__kind</code></a></td>
    <td></td>
    <td>Creates or updates a managed application.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a></td>
    <td></td>
    <td>Updates an existing managed application.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a></td>
    <td></td>
    <td>Deletes the managed application.</td>
</tr>
<tr>
    <td><a href="#delete_by_id"><CopyableCode code="delete_by_id" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-applicationId"><code>applicationId</code></a></td>
    <td></td>
    <td>Deletes the managed application.</td>
</tr>
<tr>
    <td><a href="#update_by_id"><CopyableCode code="update_by_id" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-applicationId"><code>applicationId</code></a></td>
    <td></td>
    <td>Updates an existing managed application.</td>
</tr>
<tr>
    <td><a href="#refresh_permissions"><CopyableCode code="refresh_permissions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a></td>
    <td></td>
    <td>Refresh Permissions for application.</td>
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
<tr id="parameter-applicationId">
    <td><CopyableCode code="applicationId" /></td>
    <td><code>string</code></td>
    <td>The fully qualified ID of the managed application, including the managed application name and the managed application resource type. Use the format, /subscriptions/&#123;guid&#125;/resourceGroups/&#123;resource-group-name&#125;/Microsoft.Solutions/applications/&#123;application-name&#125;</td>
</tr>
<tr id="parameter-applicationName">
    <td><CopyableCode code="applicationName" /></td>
    <td><code>string</code></td>
    <td>The name of the managed application.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_allowed_upgrade_plans', value: 'list_allowed_upgrade_plans' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' },
        { label: 'get_by_id', value: 'get_by_id' }
    ]}
>
<TabItem value="get">

Gets the managed application.

```sql
SELECT
identity,
kind,
managedBy,
plan,
properties,
sku
FROM azure.managed_applications.applications
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND applicationName = '{{ applicationName }}' -- required
;
```
</TabItem>
<TabItem value="list_allowed_upgrade_plans">

List allowed upgrade plans for application.

```sql
SELECT
name,
product,
promotionCode,
publisher,
version
FROM azure.managed_applications.applications
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND applicationName = '{{ applicationName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Lists all the applications within a resource group.

```sql
SELECT
identity,
kind,
managedBy,
plan,
properties,
sku
FROM azure.managed_applications.applications
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Lists all the applications within a subscription.

```sql
SELECT
identity,
kind,
managedBy,
plan,
properties,
sku
FROM azure.managed_applications.applications
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_by_id">

Gets the managed application.

```sql
SELECT
identity,
kind,
managedBy,
plan,
properties,
sku
FROM azure.managed_applications.applications
WHERE applicationId = '{{ applicationId }}' -- required
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

Creates or updates a managed application.

```sql
INSERT INTO azure.managed_applications.applications (
data__properties,
data__plan,
data__kind,
data__identity,
data__managedBy,
data__sku,
subscriptionId,
resourceGroupName,
applicationName
)
SELECT 
'{{ properties }}' /* required */,
'{{ plan }}',
'{{ kind }}' /* required */,
'{{ identity }}',
'{{ managedBy }}',
'{{ sku }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ applicationName }}'
RETURNING
identity,
kind,
managedBy,
plan,
properties,
sku
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: applications
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the applications resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the applications resource.
    - name: applicationName
      value: string
      description: Required parameter for the applications resource.
    - name: properties
      value: object
      description: |
        The managed application properties.
    - name: plan
      value: object
      description: |
        The plan information.
    - name: kind
      value: string
      description: |
        The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
    - name: identity
      value: object
      description: |
        The identity of the resource.
    - name: managedBy
      value: string
      description: |
        ID of the resource that manages this resource.
    - name: sku
      value: object
      description: |
        The SKU of the resource.
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

Updates an existing managed application.

```sql
UPDATE azure.managed_applications.applications
SET 
data__properties = '{{ properties }}',
data__plan = '{{ plan }}',
data__kind = '{{ kind }}',
data__identity = '{{ identity }}',
data__managedBy = '{{ managedBy }}',
data__sku = '{{ sku }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND applicationName = '{{ applicationName }}' --required
RETURNING
identity,
kind,
managedBy,
plan,
properties,
sku;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' },
        { label: 'delete_by_id', value: 'delete_by_id' }
    ]}
>
<TabItem value="delete">

Deletes the managed application.

```sql
DELETE FROM azure.managed_applications.applications
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND applicationName = '{{ applicationName }}' --required
;
```
</TabItem>
<TabItem value="delete_by_id">

Deletes the managed application.

```sql
DELETE FROM azure.managed_applications.applications
WHERE applicationId = '{{ applicationId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_by_id"
    values={[
        { label: 'update_by_id', value: 'update_by_id' },
        { label: 'refresh_permissions', value: 'refresh_permissions' }
    ]}
>
<TabItem value="update_by_id">

Updates an existing managed application.

```sql
EXEC azure.managed_applications.applications.update_by_id 
@applicationId='{{ applicationId }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"plan": "{{ plan }}", 
"kind": "{{ kind }}", 
"identity": "{{ identity }}", 
"managedBy": "{{ managedBy }}", 
"sku": "{{ sku }}"
}'
;
```
</TabItem>
<TabItem value="refresh_permissions">

Refresh Permissions for application.

```sql
EXEC azure.managed_applications.applications.refresh_permissions 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@applicationName='{{ applicationName }}' --required
;
```
</TabItem>
</Tabs>
