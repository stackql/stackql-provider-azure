--- 
title: replication_recovery_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - replication_recovery_plans
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>replication_recovery_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>replication_recovery_plans</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.replication_recovery_plans" /></td></tr>
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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The custom details.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The custom details.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type</td>
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
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the details of the recovery plan.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Lists the recovery plans in the vault.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to create a recovery plan.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to update a recovery plan.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete a recovery plan.</td>
</tr>
<tr>
    <td><a href="#failover_cancel"><CopyableCode code="failover_cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to cancel the failover of a recovery plan.</td>
</tr>
<tr>
    <td><a href="#failover_commit"><CopyableCode code="failover_commit" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to commit the failover of a recovery plan.</td>
</tr>
<tr>
    <td><a href="#planned_failover"><CopyableCode code="planned_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to start the planned failover of a recovery plan.</td>
</tr>
<tr>
    <td><a href="#reprotect"><CopyableCode code="reprotect" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to reprotect(reverse replicate) a recovery plan.</td>
</tr>
<tr>
    <td><a href="#test_failover"><CopyableCode code="test_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to start the test failover of a recovery plan.</td>
</tr>
<tr>
    <td><a href="#test_failover_cleanup"><CopyableCode code="test_failover_cleanup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to cleanup test failover of a recovery plan.</td>
</tr>
<tr>
    <td><a href="#unplanned_failover"><CopyableCode code="unplanned_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-recoveryPlanName"><code>recoveryPlanName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to start the unplanned failover of a recovery plan.</td>
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
<tr id="parameter-recoveryPlanName">
    <td><CopyableCode code="recoveryPlanName" /></td>
    <td><code>string</code></td>
    <td>Recovery plan name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group where the recovery services vault is present.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the recovery services vault.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
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

Gets the details of the recovery plan.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure.recovery_services_site_recovery.replication_recovery_plans
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND recoveryPlanName = '{{ recoveryPlanName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Lists the recovery plans in the vault.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure.recovery_services_site_recovery.replication_recovery_plans
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
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

The operation to create a recovery plan.

```sql
INSERT INTO azure.recovery_services_site_recovery.replication_recovery_plans (
data__properties,
resourceName,
resourceGroupName,
subscriptionId,
recoveryPlanName,
api-version
)
SELECT 
'{{ properties }}' /* required */,
'{{ resourceName }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ recoveryPlanName }}',
'{{ api-version }}'
RETURNING
id,
name,
location,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: replication_recovery_plans
  props:
    - name: resourceName
      value: string
      description: Required parameter for the replication_recovery_plans resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the replication_recovery_plans resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the replication_recovery_plans resource.
    - name: recoveryPlanName
      value: string
      description: Required parameter for the replication_recovery_plans resource.
    - name: properties
      value: object
      description: |
        Recovery plan creation properties.
    - name: api-version
      value: string
      description: Client Api Version.
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

The operation to update a recovery plan.

```sql
UPDATE azure.recovery_services_site_recovery.replication_recovery_plans
SET 
data__properties = '{{ properties }}'
WHERE 
resourceName = '{{ resourceName }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND recoveryPlanName = '{{ recoveryPlanName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
location,
properties,
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

Delete a recovery plan.

```sql
DELETE FROM azure.recovery_services_site_recovery.replication_recovery_plans
WHERE resourceName = '{{ resourceName }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND recoveryPlanName = '{{ recoveryPlanName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="failover_cancel"
    values={[
        { label: 'failover_cancel', value: 'failover_cancel' },
        { label: 'failover_commit', value: 'failover_commit' },
        { label: 'planned_failover', value: 'planned_failover' },
        { label: 'reprotect', value: 'reprotect' },
        { label: 'test_failover', value: 'test_failover' },
        { label: 'test_failover_cleanup', value: 'test_failover_cleanup' },
        { label: 'unplanned_failover', value: 'unplanned_failover' }
    ]}
>
<TabItem value="failover_cancel">

The operation to cancel the failover of a recovery plan.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_plans.failover_cancel 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@recoveryPlanName='{{ recoveryPlanName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="failover_commit">

The operation to commit the failover of a recovery plan.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_plans.failover_commit 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@recoveryPlanName='{{ recoveryPlanName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="planned_failover">

The operation to start the planned failover of a recovery plan.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_plans.planned_failover 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@recoveryPlanName='{{ recoveryPlanName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="reprotect">

The operation to reprotect(reverse replicate) a recovery plan.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_plans.reprotect 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@recoveryPlanName='{{ recoveryPlanName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="test_failover">

The operation to start the test failover of a recovery plan.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_plans.test_failover 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@recoveryPlanName='{{ recoveryPlanName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="test_failover_cleanup">

The operation to cleanup test failover of a recovery plan.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_plans.test_failover_cleanup 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@recoveryPlanName='{{ recoveryPlanName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="unplanned_failover">

The operation to start the unplanned failover of a recovery plan.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_plans.unplanned_failover 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@recoveryPlanName='{{ recoveryPlanName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
