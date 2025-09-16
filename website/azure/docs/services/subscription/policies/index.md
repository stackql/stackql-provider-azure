--- 
title: policies
hide_title: false
hide_table_of_contents: false
keywords:
  - policies
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

Creates, updates, deletes, gets or lists a <code>policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.subscription.policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#add_update_policy_for_tenant"><CopyableCode code="add_update_policy_for_tenant" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Create or Update Subscription tenant policy for user's tenant.</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="add_update_policy_for_tenant"
    values={[
        { label: 'add_update_policy_for_tenant', value: 'add_update_policy_for_tenant' }
    ]}
>
<TabItem value="add_update_policy_for_tenant">

Create or Update Subscription tenant policy for user's tenant.

```sql
EXEC azure.subscription.policies.add_update_policy_for_tenant 
@@json=
'{
"blockSubscriptionsLeavingTenant": {{ blockSubscriptionsLeavingTenant }}, 
"blockSubscriptionsIntoTenant": {{ blockSubscriptionsIntoTenant }}, 
"exemptedPrincipals": "{{ exemptedPrincipals }}"
}'
;
```
</TabItem>
</Tabs>
