--- 
title: settings
hide_title: false
hide_table_of_contents: false
keywords:
  - settings
  - cost_management
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

Creates, updates, deletes, gets or lists a <code>settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_scope"
    values={[
        { label: 'get_by_scope', value: 'get_by_scope' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_scope">

The request has succeeded.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Specifies the kind of settings.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK. The request has succeeded.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Specifies the kind of settings.</td>
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
    <td><a href="#get_by_scope"><CopyableCode code="get_by_scope" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Get the setting from the given scope by name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>List all cost management settings in the requested scope.</td>
</tr>
<tr>
    <td><a href="#delete_by_scope"><CopyableCode code="delete_by_scope" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Delete a setting within the given scope.</td>
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
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope associated with this setting. This includes 'subscriptions/&#123;subscriptionId&#125;' for subscription scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/billingProfiles/&#123;billingProfileId&#125;' for billing profile scope.</td>
</tr>
<tr id="parameter-type">
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Setting type.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_scope"
    values={[
        { label: 'get_by_scope', value: 'get_by_scope' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_scope">

Get the setting from the given scope by name.

```sql
SELECT
kind
FROM azure.cost_management.settings
WHERE scope = '{{ scope }}' -- required
AND type = '{{ type }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all cost management settings in the requested scope.

```sql
SELECT
kind
FROM azure.cost_management.settings
WHERE scope = '{{ scope }}' -- required
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_by_scope"
    values={[
        { label: 'delete_by_scope', value: 'delete_by_scope' }
    ]}
>
<TabItem value="delete_by_scope">

Delete a setting within the given scope.

```sql
DELETE FROM azure.cost_management.settings
WHERE scope = '{{ scope }}' --required
AND type = '{{ type }}' --required
;
```
</TabItem>
</Tabs>
