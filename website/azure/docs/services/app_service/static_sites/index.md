--- 
title: static_sites
hide_title: false
hide_table_of_contents: false
keywords:
  - static_sites
  - app_service
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

Creates, updates, deletes, gets or lists a <code>static_sites</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>static_sites</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.static_sites" /></td></tr>
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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Core resource properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Description of a SKU for a scalable resource.</td>
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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Core resource properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Description of a SKU for a scalable resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Gets the details of a static site.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get all Static Sites for a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Creates a new static site in an existing resource group, or updates an existing static site.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Creates a new static site in an existing resource group, or updates an existing static site.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Deletes a static site.</td>
</tr>
<tr>
    <td><a href="#preview_workflow"><CopyableCode code="preview_workflow" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Generates a preview workflow file for the static site</td>
</tr>
<tr>
    <td><a href="#register_user_provided_function_app_with_static_site_build"><CopyableCode code="register_user_provided_function_app_with_static_site_build" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-functionAppName"><code>functionAppName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-isForced"><code>isForced</code></a></td>
    <td>Description for Register a user provided function app with a static site build</td>
</tr>
<tr>
    <td><a href="#detach_user_provided_function_app_from_static_site_build"><CopyableCode code="detach_user_provided_function_app_from_static_site_build" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-functionAppName"><code>functionAppName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Detach the user provided function app from the static site build</td>
</tr>
<tr>
    <td><a href="#validate_custom_domain_can_be_added_to_static_site"><CopyableCode code="validate_custom_domain_can_be_added_to_static_site" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Validates a particular custom domain can be added to a static site.</td>
</tr>
<tr>
    <td><a href="#detach_static_site"><CopyableCode code="detach_static_site" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Detaches a static site.</td>
</tr>
<tr>
    <td><a href="#approve_or_reject_private_endpoint_connection"><CopyableCode code="approve_or_reject_private_endpoint_connection" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Approves or rejects a private endpoint connection</td>
</tr>
<tr>
    <td><a href="#reset_static_site_api_key"><CopyableCode code="reset_static_site_api_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Resets the api key for an existing static site.</td>
</tr>
<tr>
    <td><a href="#register_user_provided_function_app_with_static_site"><CopyableCode code="register_user_provided_function_app_with_static_site" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-functionAppName"><code>functionAppName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-isForced"><code>isForced</code></a></td>
    <td>Description for Register a user provided function app with a static site</td>
</tr>
<tr>
    <td><a href="#detach_user_provided_function_app_from_static_site"><CopyableCode code="detach_user_provided_function_app_from_static_site" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-functionAppName"><code>functionAppName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Detach the user provided function app from the static site</td>
</tr>
<tr>
    <td><a href="#validate_backend"><CopyableCode code="validate_backend" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-linkedBackendName"><code>linkedBackendName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#validate_backend_for_build"><CopyableCode code="validate_backend_for_build" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-linkedBackendName"><code>linkedBackendName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#link_backend"><CopyableCode code="link_backend" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-linkedBackendName"><code>linkedBackendName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#unlink_backend"><CopyableCode code="unlink_backend" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-linkedBackendName"><code>linkedBackendName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-isCleaningAuthConfig"><code>isCleaningAuthConfig</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#link_backend_to_build"><CopyableCode code="link_backend_to_build" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-linkedBackendName"><code>linkedBackendName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#unlink_backend_from_build"><CopyableCode code="unlink_backend_from_build" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-linkedBackendName"><code>linkedBackendName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-isCleaningAuthConfig"><code>isCleaningAuthConfig</code></a></td>
    <td></td>
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
<tr id="parameter-domainName">
    <td><CopyableCode code="domainName" /></td>
    <td><code>string</code></td>
    <td>The custom domain to validate.</td>
</tr>
<tr id="parameter-environmentName">
    <td><CopyableCode code="environmentName" /></td>
    <td><code>string</code></td>
    <td>The stage site identifier</td>
</tr>
<tr id="parameter-functionAppName">
    <td><CopyableCode code="functionAppName" /></td>
    <td><code>string</code></td>
    <td>Name of the function app registered with the static site.</td>
</tr>
<tr id="parameter-linkedBackendName">
    <td><CopyableCode code="linkedBackendName" /></td>
    <td><code>string</code></td>
    <td>Name of the backend linked to the static site</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location where you plan to create the static site.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the static site</td>
</tr>
<tr id="parameter-privateEndpointConnectionName">
    <td><CopyableCode code="privateEndpointConnectionName" /></td>
    <td><code>string</code></td>
    <td>Name of the private endpoint connection.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
<tr id="parameter-isCleaningAuthConfig">
    <td><CopyableCode code="isCleaningAuthConfig" /></td>
    <td><code>boolean</code></td>
    <td>Decides if auth will be removed from backend configuration</td>
</tr>
<tr id="parameter-isForced">
    <td><CopyableCode code="isForced" /></td>
    <td><code>boolean</code></td>
    <td>Specify <code>true</code> to force the update of the auth configuration on the function app even if an AzureStaticWebApps provider is already configured on the function app. The default is <code>false</code>.</td>
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

Description for Gets the details of a static site.

```sql
SELECT
id,
name,
identity,
properties,
sku,
systemData,
type
FROM azure.app_service.static_sites
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Description for Get all Static Sites for a subscription.

```sql
SELECT
id,
name,
identity,
properties,
sku,
systemData,
type
FROM azure.app_service.static_sites
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Description for Creates a new static site in an existing resource group, or updates an existing static site.

```sql
INSERT INTO azure.app_service.static_sites (
data__properties,
data__sku,
data__identity,
resourceGroupName,
name,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ sku }}',
'{{ identity }}',
'{{ resourceGroupName }}',
'{{ name }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
identity,
properties,
sku,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: static_sites
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the static_sites resource.
    - name: name
      value: string
      description: Required parameter for the static_sites resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the static_sites resource.
    - name: properties
      value: object
      description: |
        Core resource properties
    - name: sku
      value: object
      description: |
        Description of a SKU for a scalable resource.
    - name: identity
      value: object
      description: |
        Managed service identity.
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

Description for Creates a new static site in an existing resource group, or updates an existing static site.

```sql
UPDATE azure.app_service.static_sites
SET 
data__kind = '{{ kind }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
identity,
properties,
sku,
systemData,
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

Description for Deletes a static site.

```sql
DELETE FROM azure.app_service.static_sites
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="preview_workflow"
    values={[
        { label: 'preview_workflow', value: 'preview_workflow' },
        { label: 'register_user_provided_function_app_with_static_site_build', value: 'register_user_provided_function_app_with_static_site_build' },
        { label: 'detach_user_provided_function_app_from_static_site_build', value: 'detach_user_provided_function_app_from_static_site_build' },
        { label: 'validate_custom_domain_can_be_added_to_static_site', value: 'validate_custom_domain_can_be_added_to_static_site' },
        { label: 'detach_static_site', value: 'detach_static_site' },
        { label: 'approve_or_reject_private_endpoint_connection', value: 'approve_or_reject_private_endpoint_connection' },
        { label: 'reset_static_site_api_key', value: 'reset_static_site_api_key' },
        { label: 'register_user_provided_function_app_with_static_site', value: 'register_user_provided_function_app_with_static_site' },
        { label: 'detach_user_provided_function_app_from_static_site', value: 'detach_user_provided_function_app_from_static_site' },
        { label: 'validate_backend', value: 'validate_backend' },
        { label: 'validate_backend_for_build', value: 'validate_backend_for_build' },
        { label: 'link_backend', value: 'link_backend' },
        { label: 'unlink_backend', value: 'unlink_backend' },
        { label: 'link_backend_to_build', value: 'link_backend_to_build' },
        { label: 'unlink_backend_from_build', value: 'unlink_backend_from_build' }
    ]}
>
<TabItem value="preview_workflow">

Description for Generates a preview workflow file for the static site

```sql
EXEC azure.app_service.static_sites.preview_workflow 
@location='{{ location }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="register_user_provided_function_app_with_static_site_build">

Description for Register a user provided function app with a static site build

```sql
EXEC azure.app_service.static_sites.register_user_provided_function_app_with_static_site_build 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@environmentName='{{ environmentName }}' --required, 
@functionAppName='{{ functionAppName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@isForced={{ isForced }} 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="detach_user_provided_function_app_from_static_site_build">

Description for Detach the user provided function app from the static site build

```sql
EXEC azure.app_service.static_sites.detach_user_provided_function_app_from_static_site_build 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@environmentName='{{ environmentName }}' --required, 
@functionAppName='{{ functionAppName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="validate_custom_domain_can_be_added_to_static_site">

Description for Validates a particular custom domain can be added to a static site.

```sql
EXEC azure.app_service.static_sites.validate_custom_domain_can_be_added_to_static_site 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@domainName='{{ domainName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="detach_static_site">

Description for Detaches a static site.

```sql
EXEC azure.app_service.static_sites.detach_static_site 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="approve_or_reject_private_endpoint_connection">

Description for Approves or rejects a private endpoint connection

```sql
EXEC azure.app_service.static_sites.approve_or_reject_private_endpoint_connection 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@privateEndpointConnectionName='{{ privateEndpointConnectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="reset_static_site_api_key">

Description for Resets the api key for an existing static site.

```sql
EXEC azure.app_service.static_sites.reset_static_site_api_key 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="register_user_provided_function_app_with_static_site">

Description for Register a user provided function app with a static site

```sql
EXEC azure.app_service.static_sites.register_user_provided_function_app_with_static_site 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@functionAppName='{{ functionAppName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@isForced={{ isForced }} 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="detach_user_provided_function_app_from_static_site">

Description for Detach the user provided function app from the static site

```sql
EXEC azure.app_service.static_sites.detach_user_provided_function_app_from_static_site 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@functionAppName='{{ functionAppName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="validate_backend">

Asynchronous operation in progress.

```sql
EXEC azure.app_service.static_sites.validate_backend 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@linkedBackendName='{{ linkedBackendName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="validate_backend_for_build">

Asynchronous operation in progress.

```sql
EXEC azure.app_service.static_sites.validate_backend_for_build 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@environmentName='{{ environmentName }}' --required, 
@linkedBackendName='{{ linkedBackendName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="link_backend">

OK

```sql
EXEC azure.app_service.static_sites.link_backend 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@linkedBackendName='{{ linkedBackendName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="unlink_backend">

OK.

```sql
EXEC azure.app_service.static_sites.unlink_backend 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@linkedBackendName='{{ linkedBackendName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@isCleaningAuthConfig={{ isCleaningAuthConfig }}
;
```
</TabItem>
<TabItem value="link_backend_to_build">

OK

```sql
EXEC azure.app_service.static_sites.link_backend_to_build 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@environmentName='{{ environmentName }}' --required, 
@linkedBackendName='{{ linkedBackendName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="unlink_backend_from_build">

OK.

```sql
EXEC azure.app_service.static_sites.unlink_backend_from_build 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@environmentName='{{ environmentName }}' --required, 
@linkedBackendName='{{ linkedBackendName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@isCleaningAuthConfig={{ isCleaningAuthConfig }}
;
```
</TabItem>
</Tabs>
