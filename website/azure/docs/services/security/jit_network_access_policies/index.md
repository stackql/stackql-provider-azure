--- 
title: jit_network_access_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - jit_network_access_policies
  - security
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

Creates, updates, deletes, gets or lists a <code>jit_network_access_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>jit_network_access_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.jit_network_access_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group_and_region', value: 'list_by_resource_group_and_region' },
        { label: 'list_by_region', value: 'list_by_region' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location where the resource is stored</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group_and_region">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location where the resource is stored</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_region">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location where the resource is stored</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location where the resource is stored</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location where the resource is stored</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ascLocation"><code>ascLocation</code></a>, <a href="#parameter-jitNetworkAccessPolicyName"><code>jitNetworkAccessPolicyName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Policies for protecting resources using Just-in-Time access control for the subscription, location</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group_and_region"><CopyableCode code="list_by_resource_group_and_region" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ascLocation"><code>ascLocation</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Policies for protecting resources using Just-in-Time access control for the subscription, location</td>
</tr>
<tr>
    <td><a href="#list_by_region"><CopyableCode code="list_by_region" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-ascLocation"><code>ascLocation</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Policies for protecting resources using Just-in-Time access control for the subscription, location</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Policies for protecting resources using Just-in-Time access control for the subscription, location</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Policies for protecting resources using Just-in-Time access control.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ascLocation"><code>ascLocation</code></a>, <a href="#parameter-jitNetworkAccessPolicyName"><code>jitNetworkAccessPolicyName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create a policy for protecting resources using Just-in-Time access control</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ascLocation"><code>ascLocation</code></a>, <a href="#parameter-jitNetworkAccessPolicyName"><code>jitNetworkAccessPolicyName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete a Just-in-Time access control policy.</td>
</tr>
<tr>
    <td><a href="#initiate"><CopyableCode code="initiate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ascLocation"><code>ascLocation</code></a>, <a href="#parameter-jitNetworkAccessPolicyName"><code>jitNetworkAccessPolicyName</code></a>, <a href="#parameter-jitNetworkAccessPolicyInitiateType"><code>jitNetworkAccessPolicyInitiateType</code></a>, <a href="#parameter-virtualMachines"><code>virtualMachines</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Initiate a JIT access from a specific Just-in-Time policy configuration.</td>
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
<tr id="parameter-ascLocation">
    <td><CopyableCode code="ascLocation" /></td>
    <td><code>string</code></td>
    <td>The location where ASC stores the data of the subscription. can be retrieved from Get locations</td>
</tr>
<tr id="parameter-jitNetworkAccessPolicyInitiateType">
    <td><CopyableCode code="jitNetworkAccessPolicyInitiateType" /></td>
    <td><code>string</code></td>
    <td>Type of the action to do on the Just-in-Time access policy.</td>
</tr>
<tr id="parameter-jitNetworkAccessPolicyName">
    <td><CopyableCode code="jitNetworkAccessPolicyName" /></td>
    <td><code>string</code></td>
    <td>Name of a Just-in-Time access configuration policy.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the user's subscription. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription ID</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>API version for the operation</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group_and_region', value: 'list_by_resource_group_and_region' },
        { label: 'list_by_region', value: 'list_by_region' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Policies for protecting resources using Just-in-Time access control for the subscription, location

```sql
SELECT
id,
name,
kind,
location,
properties,
systemData,
type
FROM azure.security.jit_network_access_policies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND ascLocation = '{{ ascLocation }}' -- required
AND jitNetworkAccessPolicyName = '{{ jitNetworkAccessPolicyName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group_and_region">

Policies for protecting resources using Just-in-Time access control for the subscription, location

```sql
SELECT
id,
name,
kind,
location,
properties,
systemData,
type
FROM azure.security.jit_network_access_policies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND ascLocation = '{{ ascLocation }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_region">

Policies for protecting resources using Just-in-Time access control for the subscription, location

```sql
SELECT
id,
name,
kind,
location,
properties,
systemData,
type
FROM azure.security.jit_network_access_policies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND ascLocation = '{{ ascLocation }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Policies for protecting resources using Just-in-Time access control for the subscription, location

```sql
SELECT
id,
name,
kind,
location,
properties,
systemData,
type
FROM azure.security.jit_network_access_policies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Policies for protecting resources using Just-in-Time access control.

```sql
SELECT
id,
name,
kind,
location,
properties,
systemData,
type
FROM azure.security.jit_network_access_policies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
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

Create a policy for protecting resources using Just-in-Time access control

```sql
INSERT INTO azure.security.jit_network_access_policies (
data__properties,
data__kind,
subscriptionId,
resourceGroupName,
ascLocation,
jitNetworkAccessPolicyName,
api-version
)
SELECT 
'{{ properties }}' /* required */,
'{{ kind }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ ascLocation }}',
'{{ jitNetworkAccessPolicyName }}',
'{{ api-version }}'
RETURNING
id,
name,
kind,
location,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: jit_network_access_policies
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the jit_network_access_policies resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the jit_network_access_policies resource.
    - name: ascLocation
      value: string
      description: Required parameter for the jit_network_access_policies resource.
    - name: jitNetworkAccessPolicyName
      value: string
      description: Required parameter for the jit_network_access_policies resource.
    - name: properties
      value: object
    - name: kind
      value: string
      description: |
        Kind of the resource
    - name: api-version
      value: string
      description: API version for the operation
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

Delete a Just-in-Time access control policy.

```sql
DELETE FROM azure.security.jit_network_access_policies
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND ascLocation = '{{ ascLocation }}' --required
AND jitNetworkAccessPolicyName = '{{ jitNetworkAccessPolicyName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="initiate"
    values={[
        { label: 'initiate', value: 'initiate' }
    ]}
>
<TabItem value="initiate">

Initiate a JIT access from a specific Just-in-Time policy configuration.

```sql
EXEC azure.security.jit_network_access_policies.initiate 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@ascLocation='{{ ascLocation }}' --required, 
@jitNetworkAccessPolicyName='{{ jitNetworkAccessPolicyName }}' --required, 
@jitNetworkAccessPolicyInitiateType='{{ jitNetworkAccessPolicyInitiateType }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"virtualMachines": "{{ virtualMachines }}", 
"justification": "{{ justification }}"
}'
;
```
</TabItem>
</Tabs>
