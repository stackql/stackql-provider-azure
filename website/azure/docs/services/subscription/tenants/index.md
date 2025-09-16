--- 
title: tenants
hide_title: false
hide_table_of_contents: false
keywords:
  - tenants
  - subscription
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

Creates, updates, deletes, gets or lists a <code>tenants</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tenants</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.subscription.tenants" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

OK - Returns an array of tenants.

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
    <td>The fully qualified ID of the tenant. For example, /tenants/00000000-0000-0000-0000-000000000000.</td>
</tr>
<tr>
    <td><CopyableCode code="country" /></td>
    <td><code>string</code></td>
    <td>The country/region name of the address for the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="countryCode" /></td>
    <td><code>string</code></td>
    <td>The Country/region abbreviation for the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="defaultDomain" /></td>
    <td><code>string</code></td>
    <td>The default domain for the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name of the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="domains" /></td>
    <td><code>string</code></td>
    <td>The list of domains for the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantCategory" /></td>
    <td><code>string</code></td>
    <td>The category of the tenant. Possible values are TenantCategoryHome,TenantCategoryProjectedBy,TenantCategoryManagedBy</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The tenant ID. For example, 00000000-0000-0000-0000-000000000000.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantType" /></td>
    <td><code>string</code></td>
    <td>The tenant type. Only available for Home tenant category.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Gets the tenants for your account.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Gets the tenants for your account.

```sql
SELECT
id,
country,
countryCode,
defaultDomain,
displayName,
domains,
tenantCategory,
tenantId,
tenantType
FROM azure.subscription.tenants
;
```
</TabItem>
</Tabs>
