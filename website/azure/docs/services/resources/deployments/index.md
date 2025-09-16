--- 
title: deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - deployments
  - resources
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

Creates, updates, deletes, gets or lists a <code>deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>deployments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resources.deployments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' }
    ]}
>
<TabItem value="get">

OK - Returns information about the deployment, including provisioning status.

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
    <td>The ID of the deployment.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the deployment.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>the location of the deployment.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deployment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Deployment tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the deployment.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

OK - Returns an array of deployments.

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
    <td>The ID of the deployment.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the deployment.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>the location of the deployment.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deployment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Deployment tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the deployment.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a deployment.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Get all the deployments for a resource group.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>You can provide the template and parameters directly in the request or link to JSON files.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>A template deployment that is currently running cannot be deleted. Deleting a template deployment removes the associated deployment operations. Deleting a template deployment does not affect the state of the resource group. This is an asynchronous operation that returns a status of 202 until the template deployment is successfully deleted. The Location response header contains the URI that is used to obtain the status of the process. While the process is running, a call to the URI in the Location header returns a status of 202. When the process finishes, the URI in the Location header returns a status of 204 on success. If the asynchronous request failed, the URI in the Location header returns an error-level status code.</td>
</tr>
<tr>
    <td><a href="#cancel_at_scope"><CopyableCode code="cancel_at_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resources partially deployed.</td>
</tr>
<tr>
    <td><a href="#validate_at_scope"><CopyableCode code="validate_at_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..</td>
</tr>
<tr>
    <td><a href="#export_template_at_scope"><CopyableCode code="export_template_at_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Exports the template used for specified deployment.</td>
</tr>
<tr>
    <td><a href="#cancel_at_tenant_scope"><CopyableCode code="cancel_at_tenant_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resources partially deployed.</td>
</tr>
<tr>
    <td><a href="#validate_at_tenant_scope"><CopyableCode code="validate_at_tenant_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..</td>
</tr>
<tr>
    <td><a href="#what_if_at_tenant_scope"><CopyableCode code="what_if_at_tenant_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Returns changes that will be made by the deployment if executed at the scope of the tenant group.</td>
</tr>
<tr>
    <td><a href="#export_template_at_tenant_scope"><CopyableCode code="export_template_at_tenant_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Exports the template used for specified deployment.</td>
</tr>
<tr>
    <td><a href="#cancel_at_management_group_scope"><CopyableCode code="cancel_at_management_group_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resources partially deployed.</td>
</tr>
<tr>
    <td><a href="#validate_at_management_group_scope"><CopyableCode code="validate_at_management_group_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..</td>
</tr>
<tr>
    <td><a href="#what_if_at_management_group_scope"><CopyableCode code="what_if_at_management_group_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Returns changes that will be made by the deployment if executed at the scope of the management group.</td>
</tr>
<tr>
    <td><a href="#export_template_at_management_group_scope"><CopyableCode code="export_template_at_management_group_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Exports the template used for specified deployment.</td>
</tr>
<tr>
    <td><a href="#cancel_at_subscription_scope"><CopyableCode code="cancel_at_subscription_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resources partially deployed.</td>
</tr>
<tr>
    <td><a href="#validate_at_subscription_scope"><CopyableCode code="validate_at_subscription_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..</td>
</tr>
<tr>
    <td><a href="#what_if_at_subscription_scope"><CopyableCode code="what_if_at_subscription_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Returns changes that will be made by the deployment if executed at the scope of the subscription.</td>
</tr>
<tr>
    <td><a href="#export_template_at_subscription_scope"><CopyableCode code="export_template_at_subscription_scope" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Exports the template used for specified deployment.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resource group partially deployed.</td>
</tr>
<tr>
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..</td>
</tr>
<tr>
    <td><a href="#what_if"><CopyableCode code="what_if" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Returns changes that will be made by the deployment if executed at the scope of the resource group.</td>
</tr>
<tr>
    <td><a href="#export_template"><CopyableCode code="export_template" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Exports the template used for specified deployment.</td>
</tr>
<tr>
    <td><a href="#calculate_template_hash"><CopyableCode code="calculate_template_hash" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Calculate the hash of the given template.</td>
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
<tr id="parameter-deploymentName">
    <td><CopyableCode code="deploymentName" /></td>
    <td><code>string</code></td>
    <td>The name of the deployment.</td>
</tr>
<tr id="parameter-groupId">
    <td><CopyableCode code="groupId" /></td>
    <td><code>string</code></td>
    <td>The management group ID.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope at which the operation is performed.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. For example, you can use $filter=provisioningState eq '&#123;state&#125;'.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of results to get. If null is passed, returns all deployments.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' }
    ]}
>
<TabItem value="get">

Gets a deployment.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.resources.deployments
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND deploymentName = '{{ deploymentName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Get all the deployments for a resource group.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.resources.deployments
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
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

You can provide the template and parameters directly in the request or link to JSON files.

```sql
INSERT INTO azure.resources.deployments (
data__location,
data__properties,
data__tags,
resourceGroupName,
deploymentName,
subscriptionId
)
SELECT 
'{{ location }}',
'{{ properties }}' /* required */,
'{{ tags }}',
'{{ resourceGroupName }}',
'{{ deploymentName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
location,
properties,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: deployments
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the deployments resource.
    - name: deploymentName
      value: string
      description: Required parameter for the deployments resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the deployments resource.
    - name: location
      value: string
      description: |
        The location to store the deployment data.
    - name: properties
      value: object
      description: |
        The deployment properties.
    - name: tags
      value: object
      description: |
        Deployment tags
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

A template deployment that is currently running cannot be deleted. Deleting a template deployment removes the associated deployment operations. Deleting a template deployment does not affect the state of the resource group. This is an asynchronous operation that returns a status of 202 until the template deployment is successfully deleted. The Location response header contains the URI that is used to obtain the status of the process. While the process is running, a call to the URI in the Location header returns a status of 202. When the process finishes, the URI in the Location header returns a status of 204 on success. If the asynchronous request failed, the URI in the Location header returns an error-level status code.

```sql
DELETE FROM azure.resources.deployments
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND deploymentName = '{{ deploymentName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel_at_scope"
    values={[
        { label: 'cancel_at_scope', value: 'cancel_at_scope' },
        { label: 'validate_at_scope', value: 'validate_at_scope' },
        { label: 'export_template_at_scope', value: 'export_template_at_scope' },
        { label: 'cancel_at_tenant_scope', value: 'cancel_at_tenant_scope' },
        { label: 'validate_at_tenant_scope', value: 'validate_at_tenant_scope' },
        { label: 'what_if_at_tenant_scope', value: 'what_if_at_tenant_scope' },
        { label: 'export_template_at_tenant_scope', value: 'export_template_at_tenant_scope' },
        { label: 'cancel_at_management_group_scope', value: 'cancel_at_management_group_scope' },
        { label: 'validate_at_management_group_scope', value: 'validate_at_management_group_scope' },
        { label: 'what_if_at_management_group_scope', value: 'what_if_at_management_group_scope' },
        { label: 'export_template_at_management_group_scope', value: 'export_template_at_management_group_scope' },
        { label: 'cancel_at_subscription_scope', value: 'cancel_at_subscription_scope' },
        { label: 'validate_at_subscription_scope', value: 'validate_at_subscription_scope' },
        { label: 'what_if_at_subscription_scope', value: 'what_if_at_subscription_scope' },
        { label: 'export_template_at_subscription_scope', value: 'export_template_at_subscription_scope' },
        { label: 'cancel', value: 'cancel' },
        { label: 'validate', value: 'validate' },
        { label: 'what_if', value: 'what_if' },
        { label: 'export_template', value: 'export_template' },
        { label: 'calculate_template_hash', value: 'calculate_template_hash' }
    ]}
>
<TabItem value="cancel_at_scope">

You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resources partially deployed.

```sql
EXEC azure.resources.deployments.cancel_at_scope 
@scope='{{ scope }}' --required, 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="validate_at_scope">

Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..

```sql
EXEC azure.resources.deployments.validate_at_scope 
@scope='{{ scope }}' --required, 
@deploymentName='{{ deploymentName }}' --required 
@@json=
'{
"location": "{{ location }}", 
"properties": "{{ properties }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="export_template_at_scope">

Exports the template used for specified deployment.

```sql
EXEC azure.resources.deployments.export_template_at_scope 
@scope='{{ scope }}' --required, 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="cancel_at_tenant_scope">

You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resources partially deployed.

```sql
EXEC azure.resources.deployments.cancel_at_tenant_scope 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="validate_at_tenant_scope">

Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..

```sql
EXEC azure.resources.deployments.validate_at_tenant_scope 
@deploymentName='{{ deploymentName }}' --required 
@@json=
'{
"location": "{{ location }}", 
"properties": "{{ properties }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="what_if_at_tenant_scope">

Returns changes that will be made by the deployment if executed at the scope of the tenant group.

```sql
EXEC azure.resources.deployments.what_if_at_tenant_scope 
@deploymentName='{{ deploymentName }}' --required 
@@json=
'{
"location": "{{ location }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="export_template_at_tenant_scope">

Exports the template used for specified deployment.

```sql
EXEC azure.resources.deployments.export_template_at_tenant_scope 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="cancel_at_management_group_scope">

You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resources partially deployed.

```sql
EXEC azure.resources.deployments.cancel_at_management_group_scope 
@groupId='{{ groupId }}' --required, 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="validate_at_management_group_scope">

Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..

```sql
EXEC azure.resources.deployments.validate_at_management_group_scope 
@groupId='{{ groupId }}' --required, 
@deploymentName='{{ deploymentName }}' --required 
@@json=
'{
"location": "{{ location }}", 
"properties": "{{ properties }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="what_if_at_management_group_scope">

Returns changes that will be made by the deployment if executed at the scope of the management group.

```sql
EXEC azure.resources.deployments.what_if_at_management_group_scope 
@groupId='{{ groupId }}' --required, 
@deploymentName='{{ deploymentName }}' --required 
@@json=
'{
"location": "{{ location }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="export_template_at_management_group_scope">

Exports the template used for specified deployment.

```sql
EXEC azure.resources.deployments.export_template_at_management_group_scope 
@groupId='{{ groupId }}' --required, 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="cancel_at_subscription_scope">

You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resources partially deployed.

```sql
EXEC azure.resources.deployments.cancel_at_subscription_scope 
@deploymentName='{{ deploymentName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="validate_at_subscription_scope">

Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..

```sql
EXEC azure.resources.deployments.validate_at_subscription_scope 
@deploymentName='{{ deploymentName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"location": "{{ location }}", 
"properties": "{{ properties }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="what_if_at_subscription_scope">

Returns changes that will be made by the deployment if executed at the scope of the subscription.

```sql
EXEC azure.resources.deployments.what_if_at_subscription_scope 
@deploymentName='{{ deploymentName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"location": "{{ location }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="export_template_at_subscription_scope">

Exports the template used for specified deployment.

```sql
EXEC azure.resources.deployments.export_template_at_subscription_scope 
@deploymentName='{{ deploymentName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="cancel">

You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resource group partially deployed.

```sql
EXEC azure.resources.deployments.cancel 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@deploymentName='{{ deploymentName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="validate">

Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..

```sql
EXEC azure.resources.deployments.validate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@deploymentName='{{ deploymentName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"location": "{{ location }}", 
"properties": "{{ properties }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="what_if">

Returns changes that will be made by the deployment if executed at the scope of the resource group.

```sql
EXEC azure.resources.deployments.what_if 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@deploymentName='{{ deploymentName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"location": "{{ location }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="export_template">

Exports the template used for specified deployment.

```sql
EXEC azure.resources.deployments.export_template 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@deploymentName='{{ deploymentName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="calculate_template_hash">

Calculate the hash of the given template.

```sql
EXEC azure.resources.deployments.calculate_template_hash 

;
```
</TabItem>
</Tabs>
