--- 
title: group_quota_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - group_quota_subscriptions
  - quota
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

Creates, updates, deletes, gets or lists a <code>group_quota_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>group_quota_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.quota.group_quota_subscriptions" /></td></tr>
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

OK.

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
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK.

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
    <td></td>
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
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns the subscriptionIds along with its provisioning state for being associated with the GroupQuota. If the subscription is not a member of GroupQuota, it will return 404, else 200.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a></td>
    <td></td>
    <td>Returns a list of the subscriptionIds associated with the GroupQuotas.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Adds a subscription to GroupQuotas. The subscriptions will be validated based on the additionalAttributes defined in the GroupQuota. The additionalAttributes works as filter for the subscriptions, which can be included in the GroupQuotas. The request's TenantId is validated against the subscription's TenantId.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates the GroupQuotas with the subscription to add to the subscriptions list. The subscriptions will be validated if additionalAttributes are defined in the GroupQuota. The request's TenantId is validated against the subscription's TenantId.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Removes the subscription from GroupQuotas. The request's TenantId is validated against the subscription's TenantId.</td>
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
<tr id="parameter-groupQuotaName">
    <td><CopyableCode code="groupQuotaName" /></td>
    <td><code>string</code></td>
    <td>The GroupQuota name. The name should be unique for the provided context tenantId/MgId.</td>
</tr>
<tr id="parameter-managementGroupId">
    <td><CopyableCode code="managementGroupId" /></td>
    <td><code>string</code></td>
    <td>Management Group Id.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
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

Returns the subscriptionIds along with its provisioning state for being associated with the GroupQuota. If the subscription is not a member of GroupQuota, it will return 404, else 200.

```sql
SELECT
properties
FROM azure.quota.group_quota_subscriptions
WHERE managementGroupId = '{{ managementGroupId }}' -- required
AND groupQuotaName = '{{ groupQuotaName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns a list of the subscriptionIds associated with the GroupQuotas.

```sql
SELECT
properties
FROM azure.quota.group_quota_subscriptions
WHERE managementGroupId = '{{ managementGroupId }}' -- required
AND groupQuotaName = '{{ groupQuotaName }}' -- required
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

Adds a subscription to GroupQuotas. The subscriptions will be validated based on the additionalAttributes defined in the GroupQuota. The additionalAttributes works as filter for the subscriptions, which can be included in the GroupQuotas. The request's TenantId is validated against the subscription's TenantId.

```sql
INSERT INTO azure.quota.group_quota_subscriptions (
managementGroupId,
groupQuotaName,
subscriptionId
)
SELECT 
'{{ managementGroupId }}',
'{{ groupQuotaName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: group_quota_subscriptions
  props:
    - name: managementGroupId
      value: string
      description: Required parameter for the group_quota_subscriptions resource.
    - name: groupQuotaName
      value: string
      description: Required parameter for the group_quota_subscriptions resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the group_quota_subscriptions resource.
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

Updates the GroupQuotas with the subscription to add to the subscriptions list. The subscriptions will be validated if additionalAttributes are defined in the GroupQuota. The request's TenantId is validated against the subscription's TenantId.

```sql
UPDATE azure.quota.group_quota_subscriptions
SET 
-- No updatable properties
WHERE 
managementGroupId = '{{ managementGroupId }}' --required
AND groupQuotaName = '{{ groupQuotaName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
properties;
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

Removes the subscription from GroupQuotas. The request's TenantId is validated against the subscription's TenantId.

```sql
DELETE FROM azure.quota.group_quota_subscriptions
WHERE managementGroupId = '{{ managementGroupId }}' --required
AND groupQuotaName = '{{ groupQuotaName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
