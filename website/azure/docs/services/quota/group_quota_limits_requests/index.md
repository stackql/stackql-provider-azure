--- 
title: group_quota_limits_requests
hide_title: false
hide_table_of_contents: false
keywords:
  - group_quota_limits_requests
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

Creates, updates, deletes, gets or lists a <code>group_quota_limits_requests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>group_quota_limits_requests</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.quota.group_quota_limits_requests" /></td></tr>
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

Success, with the details of the group quota request.

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

Success, with the details of the group quota request.

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
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-requestId"><code>requestId</code></a></td>
    <td></td>
    <td>Get API to check the status of a GroupQuota request by requestId.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-resourceProviderName"><code>resourceProviderName</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td></td>
    <td>Get API to check the status of a GroupQuota request by requestId.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-resourceProviderName"><code>resourceProviderName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Put the GroupQuota requests for a specific ResourceProvider/Location/Resource. the location and resourceName ("name": &#123;"value" : "resourceName") properties are specified in the request body. Only 1 resource quota can be requested.<br />Use the polling API - OperationsStatus URI specified in Azure-AsyncOperation header field, with retry-after duration in seconds to check the intermediate status. This API provides the finals status with the request details and status.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-resourceProviderName"><code>resourceProviderName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Create the GroupQuota requests for a specific ResourceProvider/Location/Resource. the location and resourceName properties are specified in the request body. Only 1 resource quota can be requested. Please note that patch request creates a new groupQuota request.<br />Use the polling API - OperationsStatus URI specified in Azure-AsyncOperation header field, with retry-after duration in seconds to check the intermediate status. This API provides the finals status with the request details and status.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>| Field | Supported operators   |---------------------|------------------------   location eq &#123;location&#125; and resource eq &#123;resourceName&#125;  Example: $filter=location eq eastus and resourceName eq cores</td>
</tr>
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
<tr id="parameter-requestId">
    <td><CopyableCode code="requestId" /></td>
    <td><code>string</code></td>
    <td>Request Id.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
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

Get API to check the status of a GroupQuota request by requestId.

```sql
SELECT
properties
FROM azure.quota.group_quota_limits_requests
WHERE managementGroupId = '{{ managementGroupId }}' -- required
AND groupQuotaName = '{{ groupQuotaName }}' -- required
AND requestId = '{{ requestId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get API to check the status of a GroupQuota request by requestId.

```sql
SELECT
properties
FROM azure.quota.group_quota_limits_requests
WHERE managementGroupId = '{{ managementGroupId }}' -- required
AND groupQuotaName = '{{ groupQuotaName }}' -- required
AND resourceProviderName = '{{ resourceProviderName }}' -- required
AND $filter = '{{ $filter }}' -- required
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

Put the GroupQuota requests for a specific ResourceProvider/Location/Resource. the location and resourceName ("name": &#123;"value" : "resourceName") properties are specified in the request body. Only 1 resource quota can be requested.<br />Use the polling API - OperationsStatus URI specified in Azure-AsyncOperation header field, with retry-after duration in seconds to check the intermediate status. This API provides the finals status with the request details and status.

```sql
INSERT INTO azure.quota.group_quota_limits_requests (
data__properties,
managementGroupId,
groupQuotaName,
resourceProviderName,
resourceName
)
SELECT 
'{{ properties }}',
'{{ managementGroupId }}',
'{{ groupQuotaName }}',
'{{ resourceProviderName }}',
'{{ resourceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: group_quota_limits_requests
  props:
    - name: managementGroupId
      value: string
      description: Required parameter for the group_quota_limits_requests resource.
    - name: groupQuotaName
      value: string
      description: Required parameter for the group_quota_limits_requests resource.
    - name: resourceProviderName
      value: string
      description: Required parameter for the group_quota_limits_requests resource.
    - name: resourceName
      value: string
      description: Required parameter for the group_quota_limits_requests resource.
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

Create the GroupQuota requests for a specific ResourceProvider/Location/Resource. the location and resourceName properties are specified in the request body. Only 1 resource quota can be requested. Please note that patch request creates a new groupQuota request.<br />Use the polling API - OperationsStatus URI specified in Azure-AsyncOperation header field, with retry-after duration in seconds to check the intermediate status. This API provides the finals status with the request details and status.

```sql
UPDATE azure.quota.group_quota_limits_requests
SET 
data__properties = '{{ properties }}'
WHERE 
managementGroupId = '{{ managementGroupId }}' --required
AND groupQuotaName = '{{ groupQuotaName }}' --required
AND resourceProviderName = '{{ resourceProviderName }}' --required
AND resourceName = '{{ resourceName }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>
