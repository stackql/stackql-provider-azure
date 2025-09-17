--- 
title: quotas
hide_title: false
hide_table_of_contents: false
keywords:
  - quotas
  - reservations
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

Creates, updates, deletes, gets or lists a <code>quotas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>quotas</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.reservations.quotas" /></td></tr>
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

OK. Returns the paginated quota information.

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
    <td>The quota request ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the quota request.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Quota properties for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of resource. "Microsoft.Capacity/ServiceLimits"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK. Returns the paginated quota information.

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
    <td>The quota request ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the quota request.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Quota properties for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of resource. "Microsoft.Capacity/ServiceLimits"</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerId"><code>providerId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Get the current quota (service limit) and usage of a resource. You can use the response from the GET operation to submit quota update request.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerId"><code>providerId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Gets a list of current quotas (service limits) and usage for all resources. The response from the list quota operation can be leveraged to request quota updates.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerId"><code>providerId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Create or update the quota (service limits) of a resource to the requested value.<br /> Steps:<br />  1. Make the Get request to get the quota information for specific resource.<br />  2. To increase the quota, update the limit field in the response from Get request to new value.<br />  3. Submit the JSON to the quota request API to update the quota.<br />  The Create quota request may be constructed as follows. The PUT operation can be used to update the quota.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerId"><code>providerId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Update the quota (service limits) of this resource to the requested value.<br />  • To get the quota information for specific resource, send a GET request.<br />  • To increase the quota, update the limit field from the GET response to a new value.<br />  • To update the quota value, submit the JSON response to the quota request API to update the quota.<br />  • To update the quota. use the PATCH operation.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Azure region.</td>
</tr>
<tr id="parameter-providerId">
    <td><CopyableCode code="providerId" /></td>
    <td><code>string</code></td>
    <td>Azure resource provider ID.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The resource name for a resource provider, such as SKU name for Microsoft.Compute, Sku or TotalLowPriorityCores for Microsoft.MachineLearningServices</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription ID.</td>
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

Get the current quota (service limit) and usage of a resource. You can use the response from the GET operation to submit quota update request.

```sql
SELECT
id,
name,
properties,
type
FROM azure.reservations.quotas
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND providerId = '{{ providerId }}' -- required
AND location = '{{ location }}' -- required
AND resourceName = '{{ resourceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of current quotas (service limits) and usage for all resources. The response from the list quota operation can be leveraged to request quota updates.

```sql
SELECT
id,
name,
properties,
type
FROM azure.reservations.quotas
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND providerId = '{{ providerId }}' -- required
AND location = '{{ location }}' -- required
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

Create or update the quota (service limits) of a resource to the requested value.<br /> Steps:<br />  1. Make the Get request to get the quota information for specific resource.<br />  2. To increase the quota, update the limit field in the response from Get request to new value.<br />  3. Submit the JSON to the quota request API to update the quota.<br />  The Create quota request may be constructed as follows. The PUT operation can be used to update the quota.

```sql
INSERT INTO azure.reservations.quotas (
data__properties,
subscriptionId,
providerId,
location,
resourceName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ providerId }}',
'{{ location }}',
'{{ resourceName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: quotas
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the quotas resource.
    - name: providerId
      value: string
      description: Required parameter for the quotas resource.
    - name: location
      value: string
      description: Required parameter for the quotas resource.
    - name: resourceName
      value: string
      description: Required parameter for the quotas resource.
    - name: properties
      value: object
      description: |
        Quota properties for the resource.
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

Update the quota (service limits) of this resource to the requested value.<br />  • To get the quota information for specific resource, send a GET request.<br />  • To increase the quota, update the limit field from the GET response to a new value.<br />  • To update the quota value, submit the JSON response to the quota request API to update the quota.<br />  • To update the quota. use the PATCH operation.

```sql
UPDATE azure.reservations.quotas
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND providerId = '{{ providerId }}' --required
AND location = '{{ location }}' --required
AND resourceName = '{{ resourceName }}' --required
RETURNING
id,
name,
properties,
type;
```
</TabItem>
</Tabs>
