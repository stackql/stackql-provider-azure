--- 
title: private_link_for_azure_ads
hide_title: false
hide_table_of_contents: false
keywords:
  - private_link_for_azure_ads
  - azure_active_directory
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

Creates, updates, deletes, gets or lists a <code>private_link_for_azure_ads</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_link_for_azure_ads</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_active_directory.private_link_for_azure_ads" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

OK -- Returns information about the private link policy.

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
    <td>String Id used to locate any resource on Azure.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="allTenants" /></td>
    <td><code>boolean</code></td>
    <td>Flag indicating whether all tenants are allowed</td>
</tr>
<tr>
    <td><CopyableCode code="ownerTenantId" /></td>
    <td><code>string</code></td>
    <td>Guid of the owner tenant</td>
</tr>
<tr>
    <td><CopyableCode code="resourceGroup" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group</td>
</tr>
<tr>
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>Name of the private link policy resource</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription Identifier</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="tenants" /></td>
    <td><code>array</code></td>
    <td>The list of tenantIds.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successful request to get list of Private Links configuration objects For AzureAD.

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
    <td>String Id used to locate any resource on Azure.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="allTenants" /></td>
    <td><code>boolean</code></td>
    <td>Flag indicating whether all tenants are allowed</td>
</tr>
<tr>
    <td><CopyableCode code="ownerTenantId" /></td>
    <td><code>string</code></td>
    <td>Guid of the owner tenant</td>
</tr>
<tr>
    <td><CopyableCode code="resourceGroup" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group</td>
</tr>
<tr>
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>Name of the private link policy resource</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription Identifier</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="tenants" /></td>
    <td><code>array</code></td>
    <td>The list of tenantIds.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

OK -- Returns a list of private link policies.

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
    <td>String Id used to locate any resource on Azure.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="allTenants" /></td>
    <td><code>boolean</code></td>
    <td>Flag indicating whether all tenants are allowed</td>
</tr>
<tr>
    <td><CopyableCode code="ownerTenantId" /></td>
    <td><code>string</code></td>
    <td>Guid of the owner tenant</td>
</tr>
<tr>
    <td><CopyableCode code="resourceGroup" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group</td>
</tr>
<tr>
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>Name of the private link policy resource</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription Identifier</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="tenants" /></td>
    <td><code>array</code></td>
    <td>The list of tenantIds.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a></td>
    <td></td>
    <td>Gets a private link policy with a given name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Operation to return the list of Private Link Policies For AzureAD scoped to the resourceGroup.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all  Private Link Policies For AzureAD in the given subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a></td>
    <td></td>
    <td>Creates a private link policy.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a></td>
    <td></td>
    <td>Updates private link policy tags with specified values.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a></td>
    <td></td>
    <td>Deletes a private link policy. When operation completes, status code 200 returned without content.</td>
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
<tr id="parameter-policyName">
    <td><CopyableCode code="policyName" /></td>
    <td><code>string</code></td>
    <td>The name of the private link policy in Azure AD.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of an Azure resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Gets a private link policy with a given name.

```sql
SELECT
id,
name,
allTenants,
ownerTenantId,
resourceGroup,
resourceName,
subscriptionId,
tags,
tenants,
type
FROM azure.azure_active_directory.private_link_for_azure_ads
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND policyName = '{{ policyName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Operation to return the list of Private Link Policies For AzureAD scoped to the resourceGroup.

```sql
SELECT
id,
name,
allTenants,
ownerTenantId,
resourceGroup,
resourceName,
subscriptionId,
tags,
tenants,
type
FROM azure.azure_active_directory.private_link_for_azure_ads
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Lists all  Private Link Policies For AzureAD in the given subscription.

```sql
SELECT
id,
name,
allTenants,
ownerTenantId,
resourceGroup,
resourceName,
subscriptionId,
tags,
tenants,
type
FROM azure.azure_active_directory.private_link_for_azure_ads
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates a private link policy.

```sql
INSERT INTO azure.azure_active_directory.private_link_for_azure_ads (
data__name,
data__ownerTenantId,
data__allTenants,
data__tenants,
data__resourceName,
data__subscriptionId,
data__resourceGroup,
data__tags,
subscriptionId,
resourceGroupName,
policyName
)
SELECT 
'{{ name }}',
'{{ ownerTenantId }}',
{{ allTenants }},
'{{ tenants }}',
'{{ resourceName }}',
'{{ subscriptionId }}',
'{{ resourceGroup }}',
'{{ tags }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ policyName }}'
RETURNING
id,
name,
allTenants,
ownerTenantId,
resourceGroup,
resourceName,
subscriptionId,
tags,
tenants,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: private_link_for_azure_ads
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the private_link_for_azure_ads resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the private_link_for_azure_ads resource.
    - name: policyName
      value: string
      description: Required parameter for the private_link_for_azure_ads resource.
    - name: name
      value: string
      description: |
        Name of this resource.
    - name: ownerTenantId
      value: string
      description: |
        Guid of the owner tenant
    - name: allTenants
      value: boolean
      description: |
        Flag indicating whether all tenants are allowed
    - name: tenants
      value: array
      description: |
        The list of tenantIds.
    - name: resourceName
      value: string
      description: |
        Name of the private link policy resource
    - name: subscriptionId
      value: string
      description: |
        Subscription Identifier
    - name: resourceGroup
      value: string
      description: |
        Name of the resource group
    - name: tags
      value: object
      description: |
        Resource tags.
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

Updates private link policy tags with specified values.

```sql
UPDATE azure.azure_active_directory.private_link_for_azure_ads
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND policyName = '{{ policyName }}' --required
RETURNING
id,
name,
allTenants,
ownerTenantId,
resourceGroup,
resourceName,
subscriptionId,
tags,
tenants,
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

Deletes a private link policy. When operation completes, status code 200 returned without content.

```sql
DELETE FROM azure.azure_active_directory.private_link_for_azure_ads
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND policyName = '{{ policyName }}' --required
;
```
</TabItem>
</Tabs>
