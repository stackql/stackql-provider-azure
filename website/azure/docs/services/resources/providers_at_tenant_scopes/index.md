--- 
title: providers_at_tenant_scopes
hide_title: false
hide_table_of_contents: false
keywords:
  - providers_at_tenant_scopes
  - resources
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

Creates, updates, deletes, gets or lists a <code>providers_at_tenant_scopes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>providers_at_tenant_scopes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resources.providers_at_tenant_scopes" /></td></tr>
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

OK - Returns information about the resource provider.

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
    <td>The provider ID.</td>
</tr>
<tr>
    <td><CopyableCode code="namespace" /></td>
    <td><code>string</code></td>
    <td>The namespace of the resource provider.</td>
</tr>
<tr>
    <td><CopyableCode code="providerAuthorizationConsentState" /></td>
    <td><code>string</code></td>
    <td>The provider authorization consent state.</td>
</tr>
<tr>
    <td><CopyableCode code="registrationPolicy" /></td>
    <td><code>string</code></td>
    <td>The registration policy of the resource provider.</td>
</tr>
<tr>
    <td><CopyableCode code="registrationState" /></td>
    <td><code>string</code></td>
    <td>The registration state of the resource provider.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceTypes" /></td>
    <td><code>array</code></td>
    <td>The collection of provider resource types.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK - Returns an array of resource providers.

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
    <td>The provider ID.</td>
</tr>
<tr>
    <td><CopyableCode code="namespace" /></td>
    <td><code>string</code></td>
    <td>The namespace of the resource provider.</td>
</tr>
<tr>
    <td><CopyableCode code="providerAuthorizationConsentState" /></td>
    <td><code>string</code></td>
    <td>The provider authorization consent state.</td>
</tr>
<tr>
    <td><CopyableCode code="registrationPolicy" /></td>
    <td><code>string</code></td>
    <td>The registration policy of the resource provider.</td>
</tr>
<tr>
    <td><CopyableCode code="registrationState" /></td>
    <td><code>string</code></td>
    <td>The registration state of the resource provider.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceTypes" /></td>
    <td><code>array</code></td>
    <td>The collection of provider resource types.</td>
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
    <td><a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets the specified resource provider at the tenant level.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets all resource providers for the tenant.</td>
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
<tr id="parameter-resourceProviderNamespace">
    <td><CopyableCode code="resourceProviderNamespace" /></td>
    <td><code>string</code></td>
    <td>The namespace of the resource provider.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The properties to include in the results. For example, use &$expand=metadata in the query string to retrieve resource provider metadata. To include property aliases in response, use $expand=resourceTypes/aliases.</td>
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

Gets the specified resource provider at the tenant level.

```sql
SELECT
id,
namespace,
providerAuthorizationConsentState,
registrationPolicy,
registrationState,
resourceTypes
FROM azure.resources.providers_at_tenant_scopes
WHERE resourceProviderNamespace = '{{ resourceProviderNamespace }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

Gets all resource providers for the tenant.

```sql
SELECT
id,
namespace,
providerAuthorizationConsentState,
registrationPolicy,
registrationState,
resourceTypes
FROM azure.resources.providers_at_tenant_scopes
WHERE $expand = '{{ $expand }}'
;
```
</TabItem>
</Tabs>
