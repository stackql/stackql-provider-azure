--- 
title: group_quota_location_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - group_quota_location_settings
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

Creates, updates, deletes, gets or lists a <code>group_quota_location_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>group_quota_location_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.quota.group_quota_location_settings" /></td></tr>
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
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-resourceProviderName"><code>resourceProviderName</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Gets the GroupQuotas enforcement settings for the ResourceProvider/location. The locations, where GroupQuota enforcement is not enabled will return Not Found.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-resourceProviderName"><code>resourceProviderName</code></a></td>
    <td></td>
    <td>Returns only the list of the Azure regions settings, where the GroupQuotas enforcement is enabled. The locations not included in GroupQuota Enforcement will not be listed, the regions in failed status with listed as status Failed.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-resourceProviderName"><code>resourceProviderName</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Enables the GroupQuotas enforcement for the resource provider and the location specified. The resource provider will start using the group quotas as the overall quota for the subscriptions included in the GroupQuota. The subscriptions cannot request quota at subscription level.<br />The subscriptions share the GroupQuotaLimits assigned to the GroupQuota. If the GroupQuotaLimits is used, then submit a groupQuotaLimit request for the specific resource - provider/location/resource.<br />Once the GroupQuota Enforcement is enabled then, it cannot be deleted or reverted back. To disable GroupQuota Enforcement -<br /> 1. Remove all the subscriptions from the groupQuota using the delete API for Subscriptions (Check the example - GroupQuotaSubscriptions_Delete).<br /> 2. Ten delete the GroupQuota (Check the example - GroupQuotas_Delete).</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-resourceProviderName"><code>resourceProviderName</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Enables the GroupQuotas enforcement for the resource provider and the location specified. The resource provider will start using the group quotas as the overall quota for the subscriptions included in the GroupQuota. The subscriptions cannot request quota at subscription level.<br />The subscriptions share the GroupQuotaLimits assigned to the GroupQuota. If the GroupQuotaLimits is used, then submit a groupQuotaLimit request for the specific resource - provider/location/resource.<br />Once the GroupQuota Enforcement is enabled then, it cannot be deleted or reverted back. To disable GroupQuota Enforcement -<br /> 1. Remove all the subscriptions from the groupQuota using the delete API for Subscriptions (Check the example - GroupQuotaSubscriptions_Delete).<br /> 2. Ten delete the GroupQuota (Check the example - GroupQuotas_Delete).</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure region.</td>
</tr>
<tr id="parameter-managementGroupId">
    <td><CopyableCode code="managementGroupId" /></td>
    <td><code>string</code></td>
    <td>Management Group Id.</td>
</tr>
<tr id="parameter-resourceProviderName">
    <td><CopyableCode code="resourceProviderName" /></td>
    <td><code>string</code></td>
    <td>The resource provider name, such as - Microsoft.Compute. Currently only Microsoft.Compute resource provider supports this API.</td>
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

Gets the GroupQuotas enforcement settings for the ResourceProvider/location. The locations, where GroupQuota enforcement is not enabled will return Not Found.

```sql
SELECT
properties
FROM azure.quota.group_quota_location_settings
WHERE managementGroupId = '{{ managementGroupId }}' -- required
AND groupQuotaName = '{{ groupQuotaName }}' -- required
AND resourceProviderName = '{{ resourceProviderName }}' -- required
AND location = '{{ location }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns only the list of the Azure regions settings, where the GroupQuotas enforcement is enabled. The locations not included in GroupQuota Enforcement will not be listed, the regions in failed status with listed as status Failed.

```sql
SELECT
properties
FROM azure.quota.group_quota_location_settings
WHERE managementGroupId = '{{ managementGroupId }}' -- required
AND groupQuotaName = '{{ groupQuotaName }}' -- required
AND resourceProviderName = '{{ resourceProviderName }}' -- required
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

Enables the GroupQuotas enforcement for the resource provider and the location specified. The resource provider will start using the group quotas as the overall quota for the subscriptions included in the GroupQuota. The subscriptions cannot request quota at subscription level.<br />The subscriptions share the GroupQuotaLimits assigned to the GroupQuota. If the GroupQuotaLimits is used, then submit a groupQuotaLimit request for the specific resource - provider/location/resource.<br />Once the GroupQuota Enforcement is enabled then, it cannot be deleted or reverted back. To disable GroupQuota Enforcement -<br /> 1. Remove all the subscriptions from the groupQuota using the delete API for Subscriptions (Check the example - GroupQuotaSubscriptions_Delete).<br /> 2. Ten delete the GroupQuota (Check the example - GroupQuotas_Delete).

```sql
INSERT INTO azure.quota.group_quota_location_settings (
data__properties,
managementGroupId,
groupQuotaName,
resourceProviderName,
location
)
SELECT 
'{{ properties }}',
'{{ managementGroupId }}',
'{{ groupQuotaName }}',
'{{ resourceProviderName }}',
'{{ location }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: group_quota_location_settings
  props:
    - name: managementGroupId
      value: string
      description: Required parameter for the group_quota_location_settings resource.
    - name: groupQuotaName
      value: string
      description: Required parameter for the group_quota_location_settings resource.
    - name: resourceProviderName
      value: string
      description: Required parameter for the group_quota_location_settings resource.
    - name: location
      value: string
      description: Required parameter for the group_quota_location_settings resource.
    - name: properties
      value: object
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

Enables the GroupQuotas enforcement for the resource provider and the location specified. The resource provider will start using the group quotas as the overall quota for the subscriptions included in the GroupQuota. The subscriptions cannot request quota at subscription level.<br />The subscriptions share the GroupQuotaLimits assigned to the GroupQuota. If the GroupQuotaLimits is used, then submit a groupQuotaLimit request for the specific resource - provider/location/resource.<br />Once the GroupQuota Enforcement is enabled then, it cannot be deleted or reverted back. To disable GroupQuota Enforcement -<br /> 1. Remove all the subscriptions from the groupQuota using the delete API for Subscriptions (Check the example - GroupQuotaSubscriptions_Delete).<br /> 2. Ten delete the GroupQuota (Check the example - GroupQuotas_Delete).

```sql
UPDATE azure.quota.group_quota_location_settings
SET 
data__properties = '{{ properties }}'
WHERE 
managementGroupId = '{{ managementGroupId }}' --required
AND groupQuotaName = '{{ groupQuotaName }}' --required
AND resourceProviderName = '{{ resourceProviderName }}' --required
AND location = '{{ location }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>
