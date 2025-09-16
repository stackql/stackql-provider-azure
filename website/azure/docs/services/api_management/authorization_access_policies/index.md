--- 
title: authorization_access_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - authorization_access_policies
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

Creates, updates, deletes, gets or lists an <code>authorization_access_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>authorization_access_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.authorization_access_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_authorization', value: 'list_by_authorization' }
    ]}
>
<TabItem value="get">

The response body contains the specified authorization access policy entity.

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
    <td>Properties of the Authorization Contract.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_authorization">

A Collection of the Authorization Access Policy entities for the specified Authorization provider.

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
    <td>Properties of the Authorization Contract.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-authorizationProviderId"><code>authorizationProviderId</code></a>, <a href="#parameter-authorizationId"><code>authorizationId</code></a>, <a href="#parameter-authorizationAccessPolicyId"><code>authorizationAccessPolicyId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the details of the authorization access policy specified by its identifier.</td>
</tr>
<tr>
    <td><a href="#list_by_authorization"><CopyableCode code="list_by_authorization" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-authorizationProviderId"><code>authorizationProviderId</code></a>, <a href="#parameter-authorizationId"><code>authorizationId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skip"><code>$skip</code></a></td>
    <td>Lists a collection of authorization access policy defined within a authorization.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-authorizationProviderId"><code>authorizationProviderId</code></a>, <a href="#parameter-authorizationId"><code>authorizationId</code></a>, <a href="#parameter-authorizationAccessPolicyId"><code>authorizationAccessPolicyId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Creates or updates Authorization Access Policy.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-authorizationProviderId"><code>authorizationProviderId</code></a>, <a href="#parameter-authorizationId"><code>authorizationId</code></a>, <a href="#parameter-authorizationAccessPolicyId"><code>authorizationAccessPolicyId</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes specific access policy from the Authorization.</td>
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
<tr id="parameter-authorizationAccessPolicyId">
    <td><CopyableCode code="authorizationAccessPolicyId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the authorization access policy.</td>
</tr>
<tr id="parameter-authorizationId">
    <td><CopyableCode code="authorizationId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the authorization.</td>
</tr>
<tr id="parameter-authorizationProviderId">
    <td><CopyableCode code="authorizationProviderId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the authorization provider.</td>
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
    <td>|     Field     |     Usage     |     Supported operators     |     Supported functions     |&lt;/br&gt;|-------------|-------------|-------------|-------------|&lt;/br&gt;| name | filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith |&lt;/br&gt;| displayName | filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith |&lt;/br&gt;</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of records to skip.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of records to return.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Entity. Not required when creating an entity, but required when updating an entity.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_authorization', value: 'list_by_authorization' }
    ]}
>
<TabItem value="get">

Gets the details of the authorization access policy specified by its identifier.

```sql
SELECT
properties
FROM azure.api_management.authorization_access_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND authorizationProviderId = '{{ authorizationProviderId }}' -- required
AND authorizationId = '{{ authorizationId }}' -- required
AND authorizationAccessPolicyId = '{{ authorizationAccessPolicyId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_authorization">

Lists a collection of authorization access policy defined within a authorization.

```sql
SELECT
properties
FROM azure.api_management.authorization_access_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND authorizationProviderId = '{{ authorizationProviderId }}' -- required
AND authorizationId = '{{ authorizationId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skip = '{{ $skip }}'
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

Creates or updates Authorization Access Policy.

```sql
INSERT INTO azure.api_management.authorization_access_policies (
data__properties,
resourceGroupName,
serviceName,
authorizationProviderId,
authorizationId,
authorizationAccessPolicyId,
subscriptionId,
If-Match
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ serviceName }}',
'{{ authorizationProviderId }}',
'{{ authorizationId }}',
'{{ authorizationAccessPolicyId }}',
'{{ subscriptionId }}',
'{{ If-Match }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: authorization_access_policies
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the authorization_access_policies resource.
    - name: serviceName
      value: string
      description: Required parameter for the authorization_access_policies resource.
    - name: authorizationProviderId
      value: string
      description: Required parameter for the authorization_access_policies resource.
    - name: authorizationId
      value: string
      description: Required parameter for the authorization_access_policies resource.
    - name: authorizationAccessPolicyId
      value: string
      description: Required parameter for the authorization_access_policies resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the authorization_access_policies resource.
    - name: properties
      value: object
      description: |
        Properties of the Authorization Contract.
    - name: If-Match
      value: string
      description: ETag of the Entity. Not required when creating an entity, but required when updating an entity.
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

Deletes specific access policy from the Authorization.

```sql
DELETE FROM azure.api_management.authorization_access_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND authorizationProviderId = '{{ authorizationProviderId }}' --required
AND authorizationId = '{{ authorizationId }}' --required
AND authorizationAccessPolicyId = '{{ authorizationAccessPolicyId }}' --required
AND If-Match = '{{ If-Match }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
