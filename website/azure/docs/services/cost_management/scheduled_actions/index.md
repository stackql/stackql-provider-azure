--- 
title: scheduled_actions
hide_title: false
hide_table_of_contents: false
keywords:
  - scheduled_actions
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

Creates, updates, deletes, gets or lists a <code>scheduled_actions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scheduled_actions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.scheduled_actions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_scope"
    values={[
        { label: 'get_by_scope', value: 'get_by_scope' },
        { label: 'list_by_scope', value: 'list_by_scope' },
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_scope">

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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag. For update calls, eTag is optional and can be specified to achieve optimistic concurrency. Fetch the resource's eTag by doing a 'GET' call first and then including the latest eTag as part of the request body or 'If-Match' header while performing the update. For create calls, eTag is not required.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the scheduled action.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the scheduled action. (title: Scheduled action properties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Kind of the scheduled action.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_scope">

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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag. For update calls, eTag is optional and can be specified to achieve optimistic concurrency. Fetch the resource's eTag by doing a 'GET' call first and then including the latest eTag as part of the request body or 'If-Match' header while performing the update. For create calls, eTag is not required.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the scheduled action.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the scheduled action. (title: Scheduled action properties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Kind of the scheduled action.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag. For update calls, eTag is optional and can be specified to achieve optimistic concurrency. Fetch the resource's eTag by doing a 'GET' call first and then including the latest eTag as part of the request body or 'If-Match' header while performing the update. For create calls, eTag is not required.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the scheduled action.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the scheduled action. (title: Scheduled action properties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Kind of the scheduled action.</td>
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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag. For update calls, eTag is optional and can be specified to achieve optimistic concurrency. Fetch the resource's eTag by doing a 'GET' call first and then including the latest eTag as part of the request body or 'If-Match' header while performing the update. For create calls, eTag is not required.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the scheduled action.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the scheduled action. (title: Scheduled action properties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Kind of the scheduled action.</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Get the shared scheduled action from the given scope by name.</td>
</tr>
<tr>
    <td><a href="#list_by_scope"><CopyableCode code="list_by_scope" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>List all shared scheduled actions within the given scope.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Get the private scheduled action by name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>List all private scheduled actions.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Create or update a private scheduled action.</td>
</tr>
<tr>
    <td><a href="#delete_by_scope"><CopyableCode code="delete_by_scope" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Delete a scheduled action within the given scope.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Delete a private scheduled action.</td>
</tr>
<tr>
    <td><a href="#run"><CopyableCode code="run" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Processes a private scheduled action.</td>
</tr>
<tr>
    <td><a href="#run_by_scope"><CopyableCode code="run_by_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Runs a shared scheduled action within the given scope.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Checks availability and correctness of the name for a scheduled action.</td>
</tr>
<tr>
    <td><a href="#check_name_availability_by_scope"><CopyableCode code="check_name_availability_by_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Checks availability and correctness of the name for a scheduled action within the given scope.</td>
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
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Scheduled action name.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope associated with scheduled action operations. This includes 'subscriptions/&#123;subscriptionId&#125;' for subscription scope, 'subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/departments/&#123;departmentId&#125;' for Department scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/enrollmentAccounts/&#123;enrollmentAccountId&#125;' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/billingProfiles/&#123;billingProfileId&#125;' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/invoiceSections/&#123;invoiceSectionId&#125;' for InvoiceSection scope, 'providers/Microsoft.CostManagement/externalBillingAccounts/&#123;externalBillingAccountName&#125;' for External Billing Account scope and 'providers/Microsoft.CostManagement/externalSubscriptions/&#123;externalSubscriptionName&#125;' for External Subscription scope. Note: Insight Alerts are only available on subscription scope.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>May be used to filter scheduled actions by properties/viewId. Supported operator is 'eq'.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Entity. Not required when creating an entity. Optional when updating an entity and can be specified to achieve optimistic concurrency.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_scope"
    values={[
        { label: 'get_by_scope', value: 'get_by_scope' },
        { label: 'list_by_scope', value: 'list_by_scope' },
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_scope">

Get the shared scheduled action from the given scope by name.

```sql
SELECT
eTag,
kind,
properties,
systemData
FROM azure.cost_management.scheduled_actions
WHERE scope = '{{ scope }}' -- required
AND name = '{{ name }}' -- required
;
```
</TabItem>
<TabItem value="list_by_scope">

List all shared scheduled actions within the given scope.

```sql
SELECT
eTag,
kind,
properties,
systemData
FROM azure.cost_management.scheduled_actions
WHERE scope = '{{ scope }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="get">

Get the private scheduled action by name.

```sql
SELECT
eTag,
kind,
properties,
systemData
FROM azure.cost_management.scheduled_actions
WHERE name = '{{ name }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all private scheduled actions.

```sql
SELECT
eTag,
kind,
properties,
systemData
FROM azure.cost_management.scheduled_actions
WHERE $filter = '{{ $filter }}'
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

Create or update a private scheduled action.

```sql
INSERT INTO azure.cost_management.scheduled_actions (
data__kind,
data__properties,
name,
If-Match
)
SELECT 
'{{ kind }}',
'{{ properties }}',
'{{ name }}',
'{{ If-Match }}'
RETURNING
eTag,
kind,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: scheduled_actions
  props:
    - name: name
      value: string
      description: Required parameter for the scheduled_actions resource.
    - name: kind
      value: string
      description: |
        Kind of the scheduled action.
      valid_values: ['Email', 'InsightAlert']
    - name: properties
      value: object
      description: |
        The properties of the scheduled action.
    - name: If-Match
      value: string
      description: ETag of the Entity. Not required when creating an entity. Optional when updating an entity and can be specified to achieve optimistic concurrency.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_by_scope"
    values={[
        { label: 'delete_by_scope', value: 'delete_by_scope' },
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete_by_scope">

Delete a scheduled action within the given scope.

```sql
DELETE FROM azure.cost_management.scheduled_actions
WHERE scope = '{{ scope }}' --required
AND name = '{{ name }}' --required
;
```
</TabItem>
<TabItem value="delete">

Delete a private scheduled action.

```sql
DELETE FROM azure.cost_management.scheduled_actions
WHERE name = '{{ name }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="run"
    values={[
        { label: 'run', value: 'run' },
        { label: 'run_by_scope', value: 'run_by_scope' },
        { label: 'check_name_availability', value: 'check_name_availability' },
        { label: 'check_name_availability_by_scope', value: 'check_name_availability_by_scope' }
    ]}
>
<TabItem value="run">

Processes a private scheduled action.

```sql
EXEC azure.cost_management.scheduled_actions.run 
@name='{{ name }}' --required
;
```
</TabItem>
<TabItem value="run_by_scope">

Runs a shared scheduled action within the given scope.

```sql
EXEC azure.cost_management.scheduled_actions.run_by_scope 
@scope='{{ scope }}' --required, 
@name='{{ name }}' --required
;
```
</TabItem>
<TabItem value="check_name_availability">

Checks availability and correctness of the name for a scheduled action.

```sql
EXEC azure.cost_management.scheduled_actions.check_name_availability 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="check_name_availability_by_scope">

Checks availability and correctness of the name for a scheduled action within the given scope.

```sql
EXEC azure.cost_management.scheduled_actions.check_name_availability_by_scope 
@scope='{{ scope }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
</Tabs>
