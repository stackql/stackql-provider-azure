--- 
title: federated_identity_credentials
hide_title: false
hide_table_of_contents: false
keywords:
  - federated_identity_credentials
  - managed_identity
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

Creates, updates, deletes, gets or lists a <code>federated_identity_credentials</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>federated_identity_credentials</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_identity.federated_identity_credentials" /></td></tr>
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

OK. The requested federated identity credential.

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
    <td>The properties associated with the federated identity credential. (title: Federated identity credential properties.)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK. The list of federated identity credentials for the specified user assigned identity was retrieved and returned successfully.

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
    <td>The properties associated with the federated identity credential. (title: Federated identity credential properties.)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-federatedIdentityCredentialResourceName"><code>federatedIdentityCredentialResourceName</code></a></td>
    <td></td>
    <td>Gets the federated identity credential.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skiptoken"><code>$skiptoken</code></a></td>
    <td>Lists all the federated identity credentials under the specified user assigned identity.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-federatedIdentityCredentialResourceName"><code>federatedIdentityCredentialResourceName</code></a></td>
    <td></td>
    <td>Create or update a federated identity credential under the specified user assigned identity.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-federatedIdentityCredentialResourceName"><code>federatedIdentityCredentialResourceName</code></a></td>
    <td></td>
    <td>Deletes the federated identity credential.</td>
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
<tr id="parameter-federatedIdentityCredentialResourceName">
    <td><CopyableCode code="federatedIdentityCredentialResourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the federated identity credential resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the Resource Group to which the identity belongs.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the identity resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Id of the Subscription to which the identity belongs.</td>
</tr>
<tr id="parameter-$skiptoken">
    <td><CopyableCode code="$skiptoken" /></td>
    <td><code>string</code></td>
    <td>A skip token is used to continue retrieving items after an operation returns a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skipToken parameter that specifies a starting point to use for subsequent calls.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of records to return.</td>
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

Gets the federated identity credential.

```sql
SELECT
properties
FROM azure.managed_identity.federated_identity_credentials
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND federatedIdentityCredentialResourceName = '{{ federatedIdentityCredentialResourceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all the federated identity credentials under the specified user assigned identity.

```sql
SELECT
properties
FROM azure.managed_identity.federated_identity_credentials
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND $top = '{{ $top }}'
AND $skiptoken = '{{ $skiptoken }}'
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

Create or update a federated identity credential under the specified user assigned identity.

```sql
INSERT INTO azure.managed_identity.federated_identity_credentials (
data__properties,
subscriptionId,
resourceGroupName,
resourceName,
federatedIdentityCredentialResourceName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ resourceName }}',
'{{ federatedIdentityCredentialResourceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: federated_identity_credentials
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the federated_identity_credentials resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the federated_identity_credentials resource.
    - name: resourceName
      value: string
      description: Required parameter for the federated_identity_credentials resource.
    - name: federatedIdentityCredentialResourceName
      value: string
      description: Required parameter for the federated_identity_credentials resource.
    - name: properties
      value: object
      description: |
        The properties associated with the federated identity credential.
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

Deletes the federated identity credential.

```sql
DELETE FROM azure.managed_identity.federated_identity_credentials
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND federatedIdentityCredentialResourceName = '{{ federatedIdentityCredentialResourceName }}' --required
;
```
</TabItem>
</Tabs>
