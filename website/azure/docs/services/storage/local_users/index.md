--- 
title: local_users
hide_title: false
hide_table_of_contents: false
keywords:
  - local_users
  - storage
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

Creates, updates, deletes, gets or lists a <code>local_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>local_users</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.local_users" /></td></tr>
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

OK -- Get the local user properties successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Storage account local user properties.</td>
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

OK -- List local users successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Storage account local user properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-username"><code>username</code></a></td>
    <td></td>
    <td>Get the local user of the storage account by username.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$maxpagesize"><code>$maxpagesize</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$include"><code>$include</code></a></td>
    <td>List the local users associated with the storage account.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-username"><code>username</code></a></td>
    <td></td>
    <td>Create or update the properties of a local user associated with the storage account. Properties for NFSv3 enablement and extended groups cannot be set with other properties.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-username"><code>username</code></a></td>
    <td></td>
    <td>Deletes the local user associated with the specified storage account.</td>
</tr>
<tr>
    <td><a href="#regenerate_password"><CopyableCode code="regenerate_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-username"><code>username</code></a></td>
    <td></td>
    <td>Regenerate the local user SSH password.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the user's subscription. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-username">
    <td><CopyableCode code="username" /></td>
    <td><code>string</code></td>
    <td>The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Optional. When specified, only local user names starting with the filter will be listed.</td>
</tr>
<tr id="parameter-$include">
    <td><CopyableCode code="$include" /></td>
    <td><code>string</code></td>
    <td>Optional, when specified, will list local users enabled for the specific protocol. Lists all users by default.</td>
</tr>
<tr id="parameter-$maxpagesize">
    <td><CopyableCode code="$maxpagesize" /></td>
    <td><code>integer (int32)</code></td>
    <td>Optional, specifies the maximum number of local users that will be included in the list response.</td>
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

Get the local user of the storage account by username.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.storage.local_users
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND username = '{{ username }}' -- required
;
```
</TabItem>
<TabItem value="list">

List the local users associated with the storage account.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.storage.local_users
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $maxpagesize = '{{ $maxpagesize }}'
AND $filter = '{{ $filter }}'
AND $include = '{{ $include }}'
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

Create or update the properties of a local user associated with the storage account. Properties for NFSv3 enablement and extended groups cannot be set with other properties.

```sql
INSERT INTO azure.storage.local_users (
data__properties,
resourceGroupName,
accountName,
subscriptionId,
username
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ subscriptionId }}',
'{{ username }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: local_users
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the local_users resource.
    - name: accountName
      value: string
      description: Required parameter for the local_users resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the local_users resource.
    - name: username
      value: string
      description: Required parameter for the local_users resource.
    - name: properties
      value: object
      description: |
        Storage account local user properties.
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

Deletes the local user associated with the specified storage account.

```sql
DELETE FROM azure.storage.local_users
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND username = '{{ username }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="regenerate_password"
    values={[
        { label: 'regenerate_password', value: 'regenerate_password' }
    ]}
>
<TabItem value="regenerate_password">

Regenerate the local user SSH password.

```sql
EXEC azure.storage.local_users.regenerate_password 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@username='{{ username }}' --required
;
```
</TabItem>
</Tabs>
